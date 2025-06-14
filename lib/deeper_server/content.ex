defmodule DeeperServer.Content do
  @moduledoc """
  The Content context.
  """

  alias DeeperServer.Repo

  alias DeeperServer.Content.Layout
  alias DeeperServer.Content.ContentType
  alias DeeperServer.Content.Entry

  use ContextKit.CRUD, repo: Repo, schema: Layout, queries: __MODULE__
  use ContextKit.CRUD, repo: Repo, schema: ContentType, queries: __MODULE__
  use ContextKit.CRUD, repo: Repo, schema: Entry, queries: __MODULE__, plural_resource_name: "entries"

  def apply_query_option(_option, query), do: query
end
