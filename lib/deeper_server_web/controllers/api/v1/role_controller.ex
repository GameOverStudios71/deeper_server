defmodule DeeperServerWeb.Api.V1.RoleController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Accounts
  alias DeeperServer.Accounts.Role

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, _params) do
    {roles, _} = Accounts.list_roles()
    conn
    |> put_view(DeeperServerWeb.Api.V1.RoleJSON)
    |> render(:index, roles: roles)
  end

  def create(conn, %{"role" => role_params}) do
    with {:ok, %Role{} = role} <- Accounts.create_role(role_params) do
      conn
      |> put_status(:created)
      |> put_view(DeeperServerWeb.Api.V1.RoleJSON)
      |> render(:show, role: role)
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %Role{} = role} <- Accounts.get_role(id) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.RoleJSON)
      |> render(:show, role: role)
    end
  end

  def update(conn, %{"id" => id, "role" => role_params}) do
    with {:ok, %Role{} = role} <- Accounts.get_role(id),
         {:ok, %Role{} = updated_role} <- Accounts.update_role(role, role_params) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.RoleJSON)
      |> render(:show, role: updated_role)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, %Role{} = role} <- Accounts.get_role(id),
         {:ok, _} <- Accounts.delete_role(role) do
      send_resp(conn, :no_content, "")
    end
  end
end
