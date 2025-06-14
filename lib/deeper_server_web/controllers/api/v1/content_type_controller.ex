defmodule DeeperServerWeb.Api.V1.ContentTypeController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Content
  alias DeeperServer.Content.ContentType

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, params) do
    {content_types, pagination} = Content.list_content_types(params)

    conn
    |> put_view(json: DeeperServerWeb.Api.V1.ContentTypeJSON)
    |> render(:index, content_types: content_types, pagination: pagination)
  end

  def create(conn, content_type_params) do
    with {:ok, %ContentType{} = content_type} <- Content.create_content_type(content_type_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/v1/content_types/#{content_type}")
      |> put_view(json: DeeperServerWeb.Api.V1.ContentTypeJSON)
      |> render(:show, content_type: content_type)
    end
  end

  def show(conn, %{"id" => id}) do
    with %ContentType{} = content_type <- Content.get_content_type!(id) do
      conn
      |> put_view(json: DeeperServerWeb.Api.V1.ContentTypeJSON)
      |> render(:show, content_type: content_type)
    end
  end

  def update(conn, %{"id" => id, "content_type" => content_type_params}) do
    content_type = Content.get_content_type!(id)

    with {:ok, %ContentType{} = content_type} <- Content.update_content_type(content_type, content_type_params) do
      conn
      |> put_view(json: DeeperServerWeb.Api.V1.ContentTypeJSON)
      |> render(:show, content_type: content_type)
    end
  end

  def delete(conn, %{"id" => id}) do
    content_type = Content.get_content_type!(id)

    with {:ok, %ContentType{}} <- Content.delete_content_type(content_type) do
      send_resp(conn, :no_content, "")
    end
  end
end
