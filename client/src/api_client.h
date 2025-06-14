#pragma once

#include <string>
#include <functional>
#include <memory>
#include <nlohmann/json.hpp>

#include <httplib.h>

using json = nlohmann::json;

class ApiClient {
private:
    std::string base_url;
    std::string jwt_token;
    std::unique_ptr<httplib::Client> client;
    
public:
    ApiClient(const std::string& server_url = "http://localhost:4000");
    ~ApiClient();
    
    // Callback para status de conexão
    using StatusCallback = std::function<void(bool success, const std::string& message)>;
    
    // Autenticação
    void login(const std::string& email, const std::string& password, StatusCallback callback);
    void logout();
    bool is_authenticated() const;
    
    // Requisições básicas
    void get_users(StatusCallback callback);
    void get_roles(StatusCallback callback);
    void get_content_types(StatusCallback callback);
    
    // Utilitários
    std::string get_last_error() const;
    
private:
    void set_auth_header(httplib::Headers& headers);
    void handle_response(const httplib::Result& result, StatusCallback callback);
    
    std::string last_error;
};
