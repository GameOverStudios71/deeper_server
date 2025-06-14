defmodule DeeperServerWeb.Auth.Token do
  use Joken.Config

  # Configura o Joken para usar o segredo que definimos no config.exs
  def token_config do
    default_claims(exp: 8 * 60 * 60)
    |> add_claim("aud", "deeper_server_api", &(&1 == "deeper_server_api"))
  end

  # Gera um token para um usuário específico
  # "sub" (subject) é o padrão para o ID do usuário.
  def create_token(user) do
    secret = Application.get_env(:deeper_server, :joken)[:secret]
    signer = Joken.Signer.create("HS256", secret)

    generate_and_sign(%{"sub" => user.id}, signer)
  end

  # Verifica um token e retorna as claims se for válido.
  def verify_token(token) do
    secret = Application.get_env(:deeper_server, :joken)[:secret]
    signer = Joken.Signer.create("HS256", secret)

    verify_and_validate(token, signer)
  end
end
