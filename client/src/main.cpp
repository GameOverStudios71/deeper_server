#include <GLFW/glfw3.h>
#include <iostream>

// Includes da Dear ImGui
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl2.h"

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

    // Loop principal
    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        // --- Inicia um novo frame da ImGui ---
        ImGui_ImplOpenGL2_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        // --- Lógica da nossa UI ---
        // Aqui é onde construímos a nossa interface.
        // Por enquanto, apenas uma janela de demonstração.
        ImGui::ShowDemoWindow(); 

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