defmodule DeeperServerWeb.Api.V1.BlockTypeController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Blocks
  alias DeeperServer.Blocks.BlockType

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, params) do
    {block_types, pagination} = Blocks.list_block_types(params)

    conn
    |> put_view(json: DeeperServerWeb.Api.V1.BlockTypeJSON)
    |> render(:index, block_types: block_types, pagination: pagination)
  end

  def create(conn, block_type_params) do
    with {:ok, %BlockType{} = block_type} <- Blocks.create_block_type(block_type_params) do
      conn
      |> put_status(:created)
      |> put_view(json: DeeperServerWeb.Api.V1.BlockTypeJSON)
      |> render(:show, block_type: block_type)
    end
  end

  def show(conn, %{"id" => id}) do
    with %BlockType{} = block_type <- Blocks.get_block_type!(id) do
      conn
      |> put_view(json: DeeperServerWeb.Api.V1.BlockTypeJSON)
      |> render(:show, block_type: block_type)
    end
  end
end
