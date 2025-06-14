defmodule DeeperServerWeb.Api.V1.EntryBlockController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Blocks
  alias DeeperServer.Blocks.EntryBlock

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, %{"entry_id" => entry_id}) do
    # ContextKit nos dá a função `list_entry_blocks` gratuitamente.
    {entry_blocks, _} = Blocks.list_entry_blocks(entry_id: entry_id)

    conn
    |> put_view(json: DeeperServerWeb.Api.V1.EntryBlockJSON)
    |> render(:index, entry_blocks: entry_blocks)
  end

  def create(conn, %{"entry_id" => entry_id, "entry_block" => entry_block_params}) do
    params = Map.put(entry_block_params, "entry_id", entry_id)

    with {:ok, %EntryBlock{} = entry_block} <- Blocks.create_entry_block(params) do
      conn
      |> put_status(:created)
      |> put_view(json: DeeperServerWeb.Api.V1.EntryBlockJSON)
      |> render(:show, entry_block: entry_block)
    end
  end
end
