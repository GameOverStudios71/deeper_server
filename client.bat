@echo off
echo Navegando para a pasta do cliente...
cd client

echo Configurando o projeto com CMake...
cmake -B build -G "MinGW Makefiles"
if %errorlevel% neq 0 (
    echo *** ERRO: Falha na configuracao do CMake. ***
    goto :eof
)

echo Compilando o projeto...
cmake --build build
if %errorlevel% neq 0 (
    echo *** ERRO: Falha na compilacao. ***
    goto :eof
)

echo Copiando DLLs necessarias...
copy "vendor\GLFW\lib-mingw-w64\glfw3.dll" "build\"
if %errorlevel% neq 0 (
    echo *** ERRO: Falha ao copiar a DLL do GLFW. ***
    goto :eof
)

echo Executando o cliente...
build\deeper_client.exe

echo Voltando para o diretorio raiz...
cd ..

:eof
echo.
echo Script finalizado.