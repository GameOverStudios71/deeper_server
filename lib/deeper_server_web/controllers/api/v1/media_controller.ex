defmodule DeeperServerWeb.Api.V1.MediaController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Media
  alias DeeperServer.Media.Media, as: MediaSchema

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, _params) do
    {media_items, _} = Media.list_media()
    conn
    |> put_view(DeeperServerWeb.Api.V1.MediaJSON)
    |> render(:index, media_items: media_items)
  end

  def create(conn, %{"upload" => upload}) do
    with {:ok, %MediaSchema{} = media_item} <- Media.create_from_upload(upload) do
      conn
      |> put_status(:created)
      |> put_view(DeeperServerWeb.Api.V1.MediaJSON)
      |> render(:show, media_item: media_item)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, %MediaSchema{} = media_item} <- Media.get_media(id),
         {:ok, _} <- Media.delete_media(media_item) do
      send_resp(conn, :no_content, "")
    end
  end
end
