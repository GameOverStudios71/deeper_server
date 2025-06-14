defmodule DeeperServerWeb.Api.V1.ContentTypeJSON do
  alias DeeperServer.Content.ContentType

  def index(%{content_types: content_types, pagination: pagination}) do
    %{
      data: for(content_type <- content_types, do: data(content_type)),
      meta: %{pagination: pagination}
    }
  end

  def show(%{content_type: content_type}) do
    %{data: data(content_type)}
  end

  defp data(%ContentType{id: id, name: name, slug: slug, description: description, layout: layout}) do
    %{
      id: id,
      name: name,
      slug: slug,
      description: description,
      layout: layout_data(layout)
    }
  end

  defp layout_data(nil), do: nil
  defp layout_data(layout) do
    %{
      id: layout.id,
      name: layout.name
    }
  end
end
