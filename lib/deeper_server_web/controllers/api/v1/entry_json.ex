defmodule DeeperServerWeb.Api.V1.EntryJSON do
  alias DeeperServer.Content.Entry

  def index(%{entries: entries, pagination: pagination}) do
    %{
      data: for(entry <- entries, do: data(entry)),
      meta: %{pagination: pagination}
    }
  end

  def show(%{entry: entry}) do
    %{data: data(entry)}
  end

  defp data(%Entry{
         id: id,
         title: title,
         slug: slug,
         status: status,
         published_at: published_at,
         author: author,
         content_type: content_type
       }) do
    %{
      id: id,
      title: title,
      slug: slug,
      status: status,
      published_at: published_at,
      author: author_data(author),
      content_type: content_type_data(content_type)
    }
  end

  defp author_data(nil), do: nil
  defp author_data(author) do
    %{id: author.id, email: author.email}
  end

  defp content_type_data(nil), do: nil
  defp content_type_data(content_type) do
    %{id: content_type.id, name: content_type.name, slug: content_type.slug}
  end
end
