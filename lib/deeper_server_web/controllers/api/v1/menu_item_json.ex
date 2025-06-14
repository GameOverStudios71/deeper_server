defmodule DeeperServerWeb.Api.V1.MenuItemJSON do
  alias DeeperServer.System.MenuItem

  def index(%{menu_items: menu_items}) do
    %{data: for(item <- menu_items, do: data(item))}
  end

  def show(%{menu_item: menu_item}) do
    %{data: data(menu_item)}
  end

  defp data(%MenuItem{id: id, label: label, url: url, order: order, children: children}) do
    %{
      id: id,
      label: label,
      url: url,
      order: order,
      children: for(child <- children, do: data(child))
    }
  end
end
