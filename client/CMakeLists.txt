cmake_minimum_required(VERSION 3.15)
project(DeeperClient LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# --- Dependência GLFW (Configuração Manual) ---

# Define o caminho para a nossa pasta GLFW
set(GLFW_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor/GLFW)

# 1. Cria o executável
add_executable(deeper_client src/main.cpp)

# 2. Agora que o alvo "deeper_client" existe, podemos configurá-lo.

# Adiciona o diretório de cabeçalhos (.h) do GLFW ao projeto
target_include_directories(deeper_client PRIVATE ${GLFW_DIR}/include)

# Linka a biblioteca estática (.a) do GLFW - NOME CORRIGIDO AQUI
target_link_libraries(deeper_client PRIVATE ${GLFW_DIR}/lib-mingw-w64/libglfw3.a)

# Para Windows, precisamos linkar com algumas bibliotecas do sistema
if (WIN32)
    # Linka com a biblioteca OpenGL e a GDI (Graphics Device Interface)
    target_link_libraries(deeper_client PRIVATE opengl32 gdi32)
endif()
