defmodule DeeperServerWeb.Api.V1.EntryController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Content
  alias DeeperServer.Content.Entry

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, %{"content_type_id" => content_type_slug} = params) do
    # Adicionamos um filtro para buscar apenas entries do content_type específico
    {entries, pagination} = Content.list_entries(Map.put(params, "content_type.slug", content_type_slug))

    conn
    |> put_view(json: DeeperServerWeb.Api.V1.EntryJSON)
    |> render(:index, entries: entries, pagination: pagination)
  end

  def create(conn, %{"content_type_id" => content_type_slug, "entry" => entry_params}) do
    with {:ok, content_type} <- Content.one_content_type(slug: content_type_slug),
         {:ok, %Entry{} = entry} <- Content.create_entry(Map.put(entry_params, "content_type_id", content_type.id)) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/v1/content_types/#{content_type.slug}/entries/#{entry.slug}")
      |> put_view(json: DeeperServerWeb.Api.V1.EntryJSON)
      |> render(:show, entry: entry)
    end
  end

  def show(conn, %{"content_type_id" => _content_type_slug, "id" => slug}) do
    # Aqui estamos pegando pelo slug, não pelo ID.
    with %Entry{} = entry <- Content.one_entry!(slug: slug) do
      conn
      |> put_view(json: DeeperServerWeb.Api.V1.EntryJSON)
      |> render(:show, entry: entry)
    end
  end
end
