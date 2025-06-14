defmodule DeeperServerWeb.Api.V1.UserController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Repo
  alias DeeperServer.Accounts
  alias DeeperServer.Accounts.User

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, params) do
    # ContextKit nos dá a função `list_users` gratuitamente.
    # Ela suporta filtros e paginação prontos para uso.
    users = Accounts.list_users(params) |> Repo.preload([:role, :profile])

    conn
    |> put_view(json: DeeperServerWeb.Api.V1.UserJSON)
    |> render(:index, users: users)
  end

  def create(conn, user_params) do
    with {:ok, %User{} = user} <- Accounts.register_user(user_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/v1/users/#{user}")
      |> put_view(json: DeeperServerWeb.Api.V1.UserJSON)
      |> render(:show, user: user)
    end
  end

  def show(conn, %{"id" => id}) do
    # `get_user!` vem do ContextKit
    with %User{} = user <- Accounts.get_user!(id) do
      conn
      |> put_view(json: DeeperServerWeb.Api.V1.UserJSON)
      |> render(:show, user: user)
    end
  end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = Accounts.get_user!(id)

    # `update_user` vem do ContextKit
    with {:ok, %User{} = user} <- Accounts.update_user(user, user_params) do
      conn
      |> put_view(json: DeeperServerWeb.Api.V1.UserJSON)
      |> render(:show, user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    user = Accounts.get_user!(id)

    # `delete_user` vem do ContextKit
    with {:ok, %User{}} <- Accounts.delete_user(user) do
      send_resp(conn, :no_content, "")
    end
  end
end
