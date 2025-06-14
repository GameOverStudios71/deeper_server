defmodule DeeperServer.System.MenuItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "menu_items" do
    field :label, :string
    field :url, :string
    field :order, :integer, default: 0

    belongs_to :menu, DeeperServer.System.Menu
    belongs_to :parent, DeeperServer.System.MenuItem, foreign_key: :parent_id
    has_many :children, DeeperServer.System.MenuItem, foreign_key: :parent_id

    timestamps()
  end

  @doc false
  def changeset(menu_item, attrs) do
    menu_item
    |> cast(attrs, [:label, :url, :order, :menu_id, :parent_id])
    |> validate_required([:label, :url, :order, :menu_id])
    |> assoc_constraint(:menu)
    |> assoc_constraint(:parent)
  end
end
