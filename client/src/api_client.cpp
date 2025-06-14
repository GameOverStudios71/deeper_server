#include "api_client.h"
#include <iostream>

// Função externa para logging (definida no main.cpp)
extern void AddLog(const std::string& level, const std::string& message);

ApiClient::ApiClient(const std::string& server_url)
    : base_url(server_url) {

    AddLog("INFO", "Inicializando ApiClient para: " + server_url);

    // Extrai host e porta da URL
    std::string host = "localhost";
    int port = 4000;
    
    // Parse simples da URL (assumindo formato http://host:port)
    if (server_url.find("http://") == 0) {
        std::string url_part = server_url.substr(7); // Remove "http://"
        size_t colon_pos = url_part.find(':');
        if (colon_pos != std::string::npos) {
            host = url_part.substr(0, colon_pos);
            port = std::stoi(url_part.substr(colon_pos + 1));
        } else {
            host = url_part;
            port = 80;
        }
    }
    
    client = std::make_unique<httplib::Client>(host, port);
    client->set_connection_timeout(5, 0); // 5 segundos
    client->set_read_timeout(10, 0);      // 10 segundos

    AddLog("INFO", "Cliente HTTP configurado para " + host + ":" + std::to_string(port));
}

ApiClient::~ApiClient() = default;

void ApiClient::login(const std::string& email, const std::string& password, StatusCallback callback) {
    AddLog("DEBUG", "Preparando requisição de login...");

    json login_data = {
        {"email", email},
        {"password", password}
    };

    httplib::Headers headers = {
        {"Content-Type", "application/json"}
    };

    AddLog("DEBUG", "POST /api/v1/sessions - Enviando credenciais");
    auto result = client->Post("/api/v1/sessions", headers, login_data.dump(), "application/json");
    
    if (result && result->status == 200) {
        AddLog("DEBUG", "Resposta recebida: HTTP 200");
        try {
            json response = json::parse(result->body);
            if (response.contains("jwt")) {
                jwt_token = response["jwt"];
                AddLog("SUCCESS", "JWT token recebido e armazenado");
                callback(true, "Login realizado com sucesso!");
                return;
            }
        } catch (const std::exception& e) {
            last_error = "Erro ao processar resposta: " + std::string(e.what());
            AddLog("ERROR", last_error);
        }
    } else if (result && result->status == 401) {
        last_error = "Email ou senha incorretos";
        AddLog("ERROR", "HTTP 401 - " + last_error);
    } else if (result) {
        last_error = "Erro do servidor: " + std::to_string(result->status);
        AddLog("ERROR", "HTTP " + std::to_string(result->status) + " - " + last_error);
    } else {
        last_error = "Erro de conexão com o servidor";
        AddLog("ERROR", last_error);
    }
    
    callback(false, last_error);
}

void ApiClient::logout() {
    AddLog("INFO", "Realizando logout - limpando token JWT");
    jwt_token.clear();
}

bool ApiClient::is_authenticated() const {
    return !jwt_token.empty();
}

void ApiClient::get_users(StatusCallback callback) {
    if (!is_authenticated()) {
        AddLog("ERROR", "Tentativa de requisição sem autenticação");
        callback(false, "Não autenticado");
        return;
    }

    AddLog("DEBUG", "GET /api/v1/users - Solicitando lista de usuários");
    httplib::Headers headers;
    set_auth_header(headers);

    auto result = client->Get("/api/v1/users", headers);
    handle_response(result, callback);
}

void ApiClient::get_roles(StatusCallback callback) {
    if (!is_authenticated()) {
        callback(false, "Não autenticado");
        return;
    }
    
    httplib::Headers headers;
    set_auth_header(headers);
    
    auto result = client->Get("/api/v1/roles", headers);
    handle_response(result, callback);
}

void ApiClient::get_entries_for_content_type(const std::string& content_type_id, StatusCallback callback) {
    if (!is_authenticated()) {
        callback(false, "Não autenticado");
        return;
    }

    httplib::Headers headers;
    set_auth_header(headers);

    std::string path = "/api/v1/content_types/" + content_type_id + "/entries";
    AddLog("DEBUG", "GET " + path);

    auto result = client->Get(path.c_str(), headers);
    handle_response(result, callback);
}

void ApiClient::get_content_types(StatusCallback callback) {
    if (!is_authenticated()) {
        callback(false, "Não autenticado");
        return;
    }
    
    httplib::Headers headers;
    set_auth_header(headers);
    
    auto result = client->Get("/api/v1/content_types", headers);
    handle_response(result, callback);
}

std::string ApiClient::get_last_error() const {
    return last_error;
}

void ApiClient::set_auth_header(httplib::Headers& headers) {
    if (!jwt_token.empty()) {
        headers.emplace("Authorization", "Bearer " + jwt_token);
    }
}

void ApiClient::handle_response(const httplib::Result& result, StatusCallback callback) {
    if (result && result->status == 200) {
        AddLog("SUCCESS", "Resposta HTTP 200 - Dados recebidos (" + std::to_string(result->body.length()) + " bytes)");
        callback(true, result->body);
    } else if (result && result->status == 401) {
        last_error = "Token expirado ou inválido";
        AddLog("ERROR", "HTTP 401 - " + last_error + " (limpando token)");
        jwt_token.clear(); // Limpa token inválido
        callback(false, last_error);
    } else if (result) {
        last_error = "Erro do servidor: " + std::to_string(result->status);
        AddLog("ERROR", "HTTP " + std::to_string(result->status) + " - " + last_error);
        callback(false, last_error);
    } else {
        last_error = "Erro de conexão";
        AddLog("ERROR", last_error + " - Servidor pode estar offline");
        callback(false, last_error);
    }
}
