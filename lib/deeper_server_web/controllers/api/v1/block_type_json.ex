defmodule DeeperServerWeb.Api.V1.BlockTypeJSON do
  alias DeeperServer.Blocks.BlockType

  def index(%{block_types: block_types, pagination: pagination}) do
    %{
      data: for(block_type <- block_types, do: data(block_type)),
      meta: %{pagination: pagination}
    }
  end

  def show(%{block_type: block_type}) do
    %{data: data(block_type)}
  end

  defp data(%BlockType{id: id, name: name, slug: slug, description: description}) do
    %{
      id: id,
      name: name,
      slug: slug,
      description: description
    }
  end
end
