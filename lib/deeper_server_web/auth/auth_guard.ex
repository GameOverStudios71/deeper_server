defmodule DeeperServerWeb.Auth.AuthGuard do
  import Plug.Conn
  import Phoenix.Controller, only: [json: 2]

  alias DeeperServer.Repo
  alias DeeperServer.Accounts.User
  alias DeeperServerWeb.Auth.Token

  def init(opts), do: opts

  def call(conn, _opts) do
    with ["Bearer " <> token] <- get_req_header(conn, "authorization"),
         {:ok, claims} <- Token.verify_token(token),
         %{"sub" => user_id} <- claims,
         %User{} = user <- Repo.get_by(User, id: user_id) do
      # Token válido, usuário encontrado. Adiciona o usuário na conexão.
      assign(conn, :current_user, user)
    else
      # Se qualquer passo falhar, envia erro 401.
      _ ->
        conn
        |> put_status(:unauthorized)
        |> json(%{error: "unauthorized"})
        |> halt()
    end
  end
end
