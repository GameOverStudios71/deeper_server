defmodule DeeperServerWeb.Api.V1.MenuJSON do
  alias DeeperServer.System.Menu
  alias DeeperServer.System.MenuItem

  def index(%{menus: menus}) do
    %{data: for(menu <- menus, do: data(menu))}
  end

  def show(%{menu: menu}) do
    %{data: data(menu)}
  end

  defp data(%Menu{id: id, name: name, slug: slug, menu_items: menu_items}) do
    %{
      id: id,
      name: name,
      slug: slug,
      menu_items: for(item <- menu_items, do: menu_item_data(item))
    }
  end

  defp menu_item_data(%MenuItem{id: id, label: label, url: url, order: order}) do
    %{
      id: id,
      label: label,
      url: url,
      order: order
    }
  end
end
