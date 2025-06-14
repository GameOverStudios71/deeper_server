defmodule DeeperServerWeb.Api.V1.MenuController do
  use DeeperServerWeb, :controller

  alias DeeperServer.System
  alias DeeperServer.System.Menu
  alias Plug.Conn

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, _params) do
    {menus, _} = System.list_menus()
    conn
    |> put_view(DeeperServerWeb.Api.V1.MenuJSON)
    |> render(:index, menus: menus)
  end

  def create(conn, %{"menu" => menu_params}) do
    with {:ok, %Menu{} = menu} <- System.create_menu(menu_params) do
      conn
      |> put_status(:created)
      |> Conn.put_resp_header("location", ~p"/api/v1/menus/#{menu}")
      |> put_view(DeeperServerWeb.Api.V1.MenuJSON)
      |> render(:show, menu: menu)
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %Menu{} = menu} <- System.get_menu(id) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.MenuJSON)
      |> render(:show, menu: menu)
    end
  end

  def update(conn, %{"id" => id, "menu" => menu_params}) do
    with {:ok, %Menu{} = menu} <- System.get_menu(id),
         {:ok, %Menu{} = updated_menu} <- System.update_menu(menu, menu_params) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.MenuJSON)
      |> render(:show, menu: updated_menu)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, %Menu{} = menu} <- System.get_menu(id),
         {:ok, _} <- System.delete_menu(menu) do
      send_resp(conn, :no_content, "")
    end
  end
end
