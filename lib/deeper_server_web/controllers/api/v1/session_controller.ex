defmodule DeeperServerWeb.Api.V1.SessionController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Accounts
  alias DeeperServerWeb.Auth.Token

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def create(conn, %{"email" => email, "password" => password}) do
    case Accounts.login_user_by_email_and_password(email, password) do
      {:ok, user} ->
        case Token.create_token(user) do
          {:ok, token, _claims} ->
            conn
            |> put_status(:ok)
            |> json(%{jwt: token})

          {:error, reason} ->
            conn
            |> put_status(:internal_server_error)
            |> json(%{error: "could not create token: #{reason}"})
        end

      {:error, :unauthorized} ->
        conn
        |> put_status(:unauthorized)
        |> json(%{error: "invalid email or password"})
    end
  end
end
