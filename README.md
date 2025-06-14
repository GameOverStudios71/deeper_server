# Deeper Server - API Headless de CMS

Este repositório contém o código-fonte de uma API RESTful para um sistema de gerenciamento de conteúdo (CMS) "headless", construída com Elixir e Phoenix.

O projeto foi desenvolvido com um foco em modularidade, segurança e nas melhores práticas do ecossistema Elixir, servindo como uma base robusta para a construção de aplicações ricas em conteúdo.

## Features 

*   **API RESTful:** Uma API `v1` bem definida para gerenciar os recursos do sistema.
*   **Autenticação JWT:** Sistema de autenticação seguro baseado em JSON Web Tokens (JWT) para proteger os endpoints.
*   **Arquitetura Modular:** A lógica de negócio é organizada em contextos (Accounts, Content, Media, System), facilitando a manutenção e a extensibilidade.
*   **CRUD Completo:** Operações de Criar, Ler, Atualizar e Deletar para os principais recursos, como Usuários, Perfis e Roles.
*   **Banco de Dados com Ecto:** Integração com o banco de dados via Ecto, utilizando o SQLite para desenvolvimento.
*   **Seeds de Desenvolvimento:** Um script de "seeds" para popular o banco de dados com dados essenciais para o desenvolvimento, como um usuário administrador.

## Como Iniciar o Projeto

Siga os passos abaixo para instalar as dependências, configurar o banco de dados e iniciar o servidor local.

### Pré-requisitos

*   [Elixir](https://elixir-lang.org/install.html)
*   [Mix](https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html) (geralmente instalado junto com o Elixir)

### 1. Instalar Dependências

Clone o repositório e execute o seguinte comando para baixar todas as dependências do projeto:

```bash
mix deps.get
```

### 2. Configurar o Banco de Dados

O comando abaixo irá criar o banco de dados, executar todas as migrações e popular o banco com os dados iniciais (incluindo o usuário `admin@example.com`):

```bash
mix ecto.setup
```

### 3. Iniciar o Servidor Phoenix

Agora, inicie o servidor Phoenix. Por padrão, ele rodará em `http://localhost:4000`.

```bash
mix phx.server
```

## Utilizando a API

Com o servidor rodando, você pode interagir com a API. Os exemplos abaixo utilizam `curl`.

### 1. Fazer Login e Obter o Token

Para acessar as rotas protegidas, você primeiro precisa se autenticar. Envie uma requisição `POST` para o endpoint `/api/v1/sessions` com as credenciais do administrador.

**Comando:**
```powershell
# Nota: use curl.exe se estiver no PowerShell/cmd
curl -X POST -H "Content-Type: application/json" -d "{\"email\":\"admin@example.com\",\"password\":\"password123\"}" http://localhost:4000/api/v1/sessions
```

**Resposta de Sucesso:**
A API retornará um JSON contendo o token JWT.

```json
{"jwt":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."}
```

**Copie o valor do token** para usar no próximo passo.

### 2. Acessar uma Rota Protegida

Agora, utilize o token obtido para fazer uma requisição a um endpoint protegido, como o que lista todos os usuários. O token deve ser enviado no cabeçalho `Authorization` como um "Bearer Token".

**Comando:**
Substitua `SEU_TOKEN_AQUI` pelo token que você copiou.

```powershell
curl -X GET -H "Authorization: Bearer SEU_TOKEN_AQUI" http://localhost:4000/api/v1/users
```

**Resposta de Sucesso:**
Se o token for válido, a API retornará a lista de usuários com seus perfis e roles associados.

```json
{
  "data": [
    {
      "id": "1d0c465a-ada7-4270-bb8a-95922de6dd58",
      "profile": {
        "bio": "I am the administrator.",
        "full_name": "Admin User"
      },
      "role": {
        "name": "Admin"
      },
      "email": "admin@example.com",
      "confirmed_at": null
    }
  ]
}
```

E com isso, a API está totalmente funcional e pronta para ser estendida!

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
