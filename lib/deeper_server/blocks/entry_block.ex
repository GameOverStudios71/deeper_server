defmodule DeeperServer.Blocks.EntryBlock do
  use Ecto.Schema
  import Ecto.Changeset

  alias DeeperServer.Content.Entry
  alias DeeperServer.Blocks.BlockType

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "entry_blocks" do
    field :order, :integer, default: 0

    belongs_to :entry, Entry
    belongs_to :block_type, BlockType

    timestamps()
  end

  def changeset(entry_block, attrs) do
    entry_block
    |> cast(attrs, [:order, :entry_id, :block_type_id])
    |> validate_required([:order, :entry_id, :block_type_id])
  end
end
