#include <GLFW/glfw3.h>
#include <iostream>
#include <string>

// Includes da Dear ImGui
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl2.h"

// Include da nossa API
#include "api_client.h"

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
            // Interface principal (após login)
            ImGui::Begin("Deeper Client - CMS Admin");

            ImGui::Text("Bem-vindo ao Deeper Client!");
            ImGui::Text("Conectado com sucesso!");

            if (ImGui::Button("Listar Usuários")) {
                AddLog("INFO", "Solicitando lista de usuários...");
                api_client.get_users([](bool success, const std::string& response) {
                    if (success) {
                        AddLog("SUCCESS", "Lista de usuários recebida (" + std::to_string(response.length()) + " bytes)");
                        status_message = "Usuários carregados: " + response.substr(0, 100) + "...";
                    } else {
                        AddLog("ERROR", "Erro ao carregar usuários: " + response);
                        status_message = "Erro: " + response;
                    }
                });
            }

            ImGui::SameLine();
            if (ImGui::Button("Logout")) {
                AddLog("INFO", "Logout realizado");
                api_client.logout();
                show_login = true;
                status_message = "";
            }

            if (!status_message.empty()) {
                ImGui::TextWrapped("%s", status_message.c_str());
            }

            ImGui::End();
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