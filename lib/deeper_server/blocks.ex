defmodule DeeperServer.Blocks do
  @moduledoc """
  The Blocks context.
  """

  alias DeeperServer.Repo

  alias DeeperServer.Blocks.BlockType
  alias DeeperServer.Blocks.EntryBlock

  use ContextKit.CRUD, repo: Repo, schema: BlockType, queries: __MODULE__, plural_resource_name: "block_types"
  use ContextKit.CRUD, repo: Repo, schema: EntryBlock, queries: __MODULE__, plural_resource_name: "entry_blocks"

  def apply_query_option(_option, query), do: query
end
