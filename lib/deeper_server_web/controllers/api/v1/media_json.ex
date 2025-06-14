defmodule DeeperServerWeb.Api.V1.MediaJSON do
  alias DeeperServer.Media.Media

  def index(%{media_items: media_items}) do
    %{data: for(item <- media_items, do: data(item))}
  end

  def show(%{media_item: media_item}) do
    %{data: data(media_item)}
  end

  defp data(%Media{
         id: id,
         filename: filename,
         path: path,
         mime_type: mime_type,
         size: size,
         alt_text: alt_text
       }) do
    %{
      id: id,
      filename: filename,
      path: path,
      mime_type: mime_type,
      size: size,
      alt_text: alt_text
    }
  end
end
