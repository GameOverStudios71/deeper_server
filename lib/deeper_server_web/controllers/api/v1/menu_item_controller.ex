defmodule DeeperServerWeb.Api.V1.MenuItemController do
  use DeeperServerWeb, :controller

  alias DeeperServer.System
  alias DeeperServer.System.MenuItem

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, %{"menu_id" => menu_id}) do
    {menu_items, _} = System.list_menu_items(menu_id: menu_id)
    conn
    |> put_view(DeeperServerWeb.Api.V1.MenuItemJSON)
    |> render(:index, menu_items: menu_items)
  end

  def create(conn, %{"menu_id" => menu_id, "menu_item" => menu_item_params}) do
    params = Map.put(menu_item_params, "menu_id", menu_id)

    with {:ok, %MenuItem{} = menu_item} <- System.create_menu_item(params) do
      conn
      |> put_status(:created)
      |> put_view(DeeperServerWeb.Api.V1.MenuItemJSON)
      |> render(:show, menu_item: menu_item)
    end
  end
end
