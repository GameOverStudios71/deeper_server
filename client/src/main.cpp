#include <GLFW/glfw3.h>
#include <iostream>
#include <string>

// Includes da Dear ImGui
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl2.h"

// Include da nossa API
#include "api_client.h"
#include "nlohmann/json.hpp"

// Alias para o nlohmann::json para facilitar
using json = nlohmann::json;

// Sistema de Debug/Logging
#include <vector>
#include <ctime>
#include <sstream>
#include <iomanip>

struct LogEntry {
    std::string timestamp;
    std::string level;
    std::string message;
};

static std::vector<LogEntry> debug_logs;
static bool show_debug_panel = true;
static bool auto_scroll = true;

// Função para adicionar logs
void AddLog(const std::string& level, const std::string& message) {
    LogEntry entry;

    // Timestamp
    auto now = std::time(nullptr);
    auto tm = *std::localtime(&now);
    std::ostringstream oss;
    oss << std::put_time(&tm, "%H:%M:%S");
    entry.timestamp = oss.str();

    entry.level = level;
    entry.message = message;

    debug_logs.push_back(entry);

    // Limita a 1000 entradas para não consumir muita memória
    if (debug_logs.size() > 1000) {
        debug_logs.erase(debug_logs.begin());
    }
}

// Variáveis globais para a interface
static ApiClient api_client;
static char email_buffer[256] = "admin@example.com";
static char password_buffer[256] = "password123";
static std::string status_message = "";
static bool show_login = true;

// Novas variáveis para a tela de conteúdo
static bool show_content_window = true; // Começa visível por padrão
static bool content_types_loaded = false;
static json content_types_json;
static json entries_json;
static int selected_content_type_idx = -1;
static std::string selected_content_type_id = "";
static std::string content_status_message = "";

// Função para renderizar a janela de gerenciamento de conteúdo
void ShowContentWindow() {
    ImGui::Begin("Gerenciador de Conteúdo", &show_content_window);

    // Carregar os tipos de conteúdo na primeira vez que a janela é aberta ou após o login
    if (!content_types_loaded) {
        content_status_message = "Carregando tipos de conteúdo...";
        AddLog("INFO", content_status_message);
        api_client.get_content_types([](bool success, const std::string& response) {
            if (success) {
                try {
                    content_types_json = json::parse(response);
                    content_status_message = "Tipos de conteúdo carregados com sucesso.";
                    AddLog("SUCCESS", content_status_message);
                } catch (const json::parse_error& e) {
                    content_status_message = "Erro ao processar JSON de tipos de conteúdo: " + std::string(e.what());
                    AddLog("ERROR", content_status_message);
                }
            } else {
                content_status_message = "Erro ao carregar tipos de conteúdo: " + response;
                AddLog("ERROR", content_status_message);
            }
        });
        content_types_loaded = true; // Evita recarregar a cada frame
    }

    // Layout de duas colunas
    ImGui::Columns(2, "ContentColumns", false);
    ImGui::SetColumnWidth(0, 250.0f);

    // --- Coluna da Esquerda: Tipos de Conteúdo ---
    ImGui::Text("Tipos de Conteúdo");
    ImGui::Separator();
    ImGui::BeginChild("ContentTypesRegion", ImVec2(0, -ImGui::GetFrameHeightWithSpacing() - 5), true);

    if (content_types_json.is_array()) {
        for (int i = 0; i < content_types_json.size(); ++i) {
            const auto& ct = content_types_json[i];
            std::string name = ct.value("name", "Sem nome");
            if (ImGui::Selectable(name.c_str(), selected_content_type_idx == i)) {
                if (selected_content_type_idx != i) {
                    selected_content_type_idx = i;
                    selected_content_type_id = ct.value("id", "");
                    content_status_message = "Carregando entradas para: " + name;
                    AddLog("INFO", content_status_message);
                    entries_json.clear(); // Limpa entradas antigas

                    api_client.get_entries_for_content_type(selected_content_type_id, [](bool success, const std::string& response) {
                        if (success) {
                            try {
                                entries_json = json::parse(response);
                                content_status_message = "Entradas carregadas.";
                                AddLog("SUCCESS", content_status_message);
                            } catch (const json::parse_error& e) {
                                content_status_message = "Erro ao processar JSON de entradas: " + std::string(e.what());
                                AddLog("ERROR", content_status_message);
                            }
                        } else {
                            content_status_message = "Erro ao carregar entradas: " + response;
                            AddLog("ERROR", content_status_message);
                        }
                    });
                }
            }
        }
    }
    ImGui::EndChild();

    ImGui::NextColumn();

    // --- Coluna da Direita: Entradas ---
    ImGui::Text("Entradas");
    ImGui::Separator();
    ImGui::BeginChild("EntriesRegion", ImVec2(0, -ImGui::GetFrameHeightWithSpacing() - 5), true);

    if (entries_json.is_array() && !entries_json.empty()) {
        if (ImGui::BeginTable("EntriesTable", 2, ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_Resizable)) {
            ImGui::TableSetupColumn("Título");
            ImGui::TableSetupColumn("Status", ImGuiTableColumnFlags_WidthFixed, 80.0f);
            ImGui::TableHeadersRow();

            for (const auto& entry : entries_json) {
                ImGui::TableNextRow();
                ImGui::TableSetColumnIndex(0);
                ImGui::Text("%s", entry.value("title", "Sem Título").c_str());
                ImGui::TableSetColumnIndex(1);
                ImGui::Text("%s", entry.value("status", "-").c_str());
            }
            ImGui::EndTable();
        }
    } else if (selected_content_type_idx != -1) {
        ImGui::Text("Nenhuma entrada encontrada para este tipo.");
    } else {
        ImGui::Text("Selecione um Tipo de Conteúdo à esquerda.");
    }

    ImGui::EndChild();
    
    ImGui::Columns(1);
    ImGui::Separator();
    ImGui::TextWrapped("%s", content_status_message.c_str());

    ImGui::End();
}

int main() {
    // Inicializa o GLFW
    if (!glfwInit()) {
        std::cerr << "Falha ao inicializar GLFW" << std::endl;
        return -1;
    }

    // Configura a janela (versão do OpenGL, etc.)
    // Pedindo OpenGL 2.1 para máxima compatibilidade com hardware antigo.
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);

    // Cria a janela
    GLFWwindow* window = glfwCreateWindow(1280, 720, "Deeper Client", NULL, NULL);
    if (window == NULL) {
        std::cerr << "Falha ao criar a janela GLFW" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1); // Ativa o V-Sync

    // --- Configuração da Dear ImGui ---
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    
    // Configura o estilo
    ImGui::StyleColorsDark();

    // Configura os backends (bindings)
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL2_Init();

    // Log inicial
    AddLog("INFO", "Aplicativo iniciado");
    AddLog("INFO", "ImGui inicializado com sucesso");
    AddLog("INFO", "Janela criada: 1280x720");

    // Loop principal
    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        // --- Inicia um novo frame da ImGui ---
        ImGui_ImplOpenGL2_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        // --- Lógica da nossa UI ---

        if (show_login) {
            // Janela de Login
            ImGui::Begin("Login - Deeper CMS", &show_login, ImGuiWindowFlags_NoCollapse);

            ImGui::Text("Conectar ao Servidor CMS");
            ImGui::Separator();

            ImGui::InputText("Email", email_buffer, sizeof(email_buffer));
            ImGui::InputText("Senha", password_buffer, sizeof(password_buffer), ImGuiInputTextFlags_Password);

            if (ImGui::Button("Entrar")) {
                AddLog("INFO", "Tentativa de login iniciada para: " + std::string(email_buffer));
                api_client.login(email_buffer, password_buffer, [](bool success, const std::string& message) {
                    if (success) {
                        AddLog("SUCCESS", "Login realizado com sucesso!");
                        status_message = "Login realizado com sucesso!";
                        show_login = false;
                    } else {
                        AddLog("ERROR", "Falha no login: " + message);
                        status_message = "Erro: " + message;
                    }
                });
            }

            if (!status_message.empty()) {
                ImGui::TextColored(ImVec4(1.0f, 0.0f, 0.0f, 1.0f), "%s", status_message.c_str());
            }

            ImGui::End();
        } else {
            // --- Interface Principal (após login) ---
            if (ImGui::BeginMainMenuBar()) {
                if (ImGui::BeginMenu("Arquivo")) {
                    if (ImGui::MenuItem("Logout")) {
                        AddLog("INFO", "Logout realizado");
                        api_client.logout();
                        show_login = true;
                        status_message = "";
                        // Reseta o estado do conteúdo
                        content_types_loaded = false;
                        content_types_json.clear();
                        entries_json.clear();
                        selected_content_type_idx = -1;
                        selected_content_type_id = "";
                        content_status_message = "";
                    }
                    ImGui::EndMenu();
                }
                if (ImGui::BeginMenu("Visualizar")) {
                    ImGui::MenuItem("Gerenciador de Conteúdo", NULL, &show_content_window);
                    // Futuramente: ImGui::MenuItem("Gerenciador de Mídia", NULL, &show_media_window);
                }
                ImGui::EndMainMenuBar();
            }

            // Renderiza as janelas principais
            if (show_content_window) {
                ShowContentWindow();
            }

            // A janela de conteúdo é agora controlada pelo menu "Visualizar".
            // A janela de debug continua a ser renderizada separadamente.
        }

        // --- Painel de Debug (sempre visível) ---
        if (show_debug_panel) {
            // Posiciona o painel na parte inferior da tela
            ImGui::SetNextWindowPos(ImVec2(0, 520), ImGuiCond_FirstUseEver);
            ImGui::SetNextWindowSize(ImVec2(1280, 200), ImGuiCond_FirstUseEver);

            ImGui::Begin("Debug Console", &show_debug_panel, ImGuiWindowFlags_NoCollapse);

            // Botões de controle
            if (ImGui::Button("Limpar")) {
                debug_logs.clear();
                AddLog("INFO", "Console de debug limpo");
            }
            ImGui::SameLine();
            ImGui::Checkbox("Auto-scroll", &auto_scroll);
            ImGui::SameLine();
            if (ImGui::Button("Teste")) {
                AddLog("DEBUG", "Mensagem de teste do sistema de debug");
            }

            ImGui::Separator();

            // Área de scroll para os logs
            ImGui::BeginChild("ScrollingRegion", ImVec2(0, -ImGui::GetFrameHeightWithSpacing()), false, ImGuiWindowFlags_HorizontalScrollbar);

            // Exibe todos os logs
            for (const auto& log : debug_logs) {
                ImVec4 color = ImVec4(1.0f, 1.0f, 1.0f, 1.0f); // Branco padrão

                // Define cores por nível
                if (log.level == "ERROR") {
                    color = ImVec4(1.0f, 0.4f, 0.4f, 1.0f); // Vermelho
                } else if (log.level == "SUCCESS") {
                    color = ImVec4(0.4f, 1.0f, 0.4f, 1.0f); // Verde
                } else if (log.level == "INFO") {
                    color = ImVec4(0.4f, 0.8f, 1.0f, 1.0f); // Azul claro
                } else if (log.level == "DEBUG") {
                    color = ImVec4(0.8f, 0.8f, 0.8f, 1.0f); // Cinza
                }

                ImGui::TextColored(color, "[%s] [%s] %s",
                    log.timestamp.c_str(),
                    log.level.c_str(),
                    log.message.c_str());
            }

            // Auto-scroll para o final
            if (auto_scroll && ImGui::GetScrollY() >= ImGui::GetScrollMaxY()) {
                ImGui::SetScrollHereY(1.0f);
            }

            ImGui::EndChild();
            ImGui::End();
        }

        // --- Lógica de Renderização ---
        glViewport(0, 0, 1280, 720);
        glClearColor(0.1f, 0.1f, 0.2f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // Renderiza a UI da ImGui
        ImGui::Render();
        ImGui_ImplOpenGL2_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
    }

    // --- Limpeza ---
    ImGui_ImplOpenGL2_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
} 