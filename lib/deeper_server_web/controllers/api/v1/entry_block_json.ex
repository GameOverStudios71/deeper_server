defmodule DeeperServerWeb.Api.V1.EntryBlockJSON do
  alias DeeperServer.Blocks.EntryBlock

  def index(%{entry_blocks: entry_blocks}) do
    %{data: for(entry_block <- entry_blocks, do: data(entry_block))}
  end

  def show(%{entry_block: entry_block}) do
    %{data: data(entry_block)}
  end

  defp data(%EntryBlock{id: id, order: order, block_type: block_type}) do
    %{
      id: id,
      order: order,
      block_type: block_type_data(block_type)
    }
  end

  defp block_type_data(nil), do: nil
  defp block_type_data(block_type) do
    %{
      id: block_type.id,
      name: block_type.name,
      slug: block_type.slug
    }
  end
end
