#include <GLFW/glfw3.h>
#include <iostream>

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
    GLFWwindow* window = glfwCreateWindow(800, 600, "Deeper Client", NULL, NULL);
    if (window == NULL) {
        std::cerr << "Falha ao criar a janela GLFW" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    // Loop principal (Game Loop)
    // A janela ficará aberta, renderizando, até que o usuário a feche.
    while (!glfwWindowShouldClose(window)) {
        // --- Processamento de Input ---
        // (aqui vamos lidar com teclado, mouse, etc. no futuro)
        glfwPollEvents();

        // --- Lógica de Renderização ---
        // (aqui vamos desenhar nosso cenário 3D e UI no futuro)
        
        // Por enquanto, apenas limpamos a tela com uma cor.
        // Este é um azul escuro.
        glClearColor(0.1f, 0.1f, 0.2f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // --- Troca de Buffers ---
        // Mostra na tela o que acabamos de desenhar.
        glfwSwapBuffers(window);
    }

    // Limpeza
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
} 