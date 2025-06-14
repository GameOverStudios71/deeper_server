defmodule DeeperServerWeb.Api.V1.LayoutController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Content
  alias DeeperServer.Content.Layout

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, _params) do
    {layouts, _} = Content.list_layouts()
    conn
    |> put_view(DeeperServerWeb.Api.V1.LayoutJSON)
    |> render(:index, layouts: layouts)
  end

  def create(conn, %{"layout" => layout_params}) do
    with {:ok, %Layout{} = layout} <- Content.create_layout(layout_params) do
      conn
      |> put_status(:created)
      |> put_view(DeeperServerWeb.Api.V1.LayoutJSON)
      |> render(:show, layout: layout)
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %Layout{} = layout} <- Content.get_layout(id) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.LayoutJSON)
      |> render(:show, layout: layout)
    end
  end

  def update(conn, %{"id" => id, "layout" => layout_params}) do
    with {:ok, %Layout{} = layout} <- Content.get_layout(id),
         {:ok, %Layout{} = updated_layout} <- Content.update_layout(layout, layout_params) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.LayoutJSON)
      |> render(:show, layout: updated_layout)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, %Layout{} = layout} <- Content.get_layout(id),
         {:ok, _} <- Content.delete_layout(layout) do
      send_resp(conn, :no_content, "")
    end
  end
end
