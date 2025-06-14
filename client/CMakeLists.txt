cmake_minimum_required(VERSION 3.15)
project(DeeperClient LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# --- Dependências (Configuração Manual) ---
set(GLFW_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor/GLFW)
set(IMGUI_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor/imgui)
set(HTTPLIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor/cpp-httplib)
set(JSON_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor/json)

# 1. Cria o executável
add_executable(deeper_client
    src/main.cpp
    src/api_client.cpp

    # Adiciona os arquivos-fonte da ImGui ao nosso executável
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_tables.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
    ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
    ${IMGUI_DIR}/backends/imgui_impl_opengl2.cpp
)

# 2. Configura o alvo "deeper_client"
target_include_directories(deeper_client PRIVATE
    ${GLFW_DIR}/include
    ${IMGUI_DIR}
    ${IMGUI_DIR}/backends
    ${HTTPLIB_DIR}
    ${JSON_DIR}/include
)

target_link_libraries(deeper_client PRIVATE 
    ${GLFW_DIR}/lib-mingw-w64/libglfw3.a
)

if (WIN32)
    target_link_libraries(deeper_client PRIVATE opengl32 gdi32 ws2_32 wininet)
endif()
