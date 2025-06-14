defmodule DeeperServer.Blocks.BlockType do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "block_types" do
    field :name, :string
    field :slug, :string
    field :description, :string

    timestamps()
  end

  def changeset(block_type, attrs) do
    block_type
    |> cast(attrs, [:name, :slug, :description])
    |> validate_required([:name, :slug])
    |> unique_constraint(:slug)
  end
end
