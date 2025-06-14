defmodule DeeperServer.System.Menu do
  use Ecto.Schema
  import Ecto.Changeset

  schema "menus" do
    field :name, :string
    field :slug, :string

    has_many :menu_items, DeeperServer.System.MenuItem, foreign_key: :menu_id

    timestamps()
  end

  @doc false
  def changeset(menu, attrs) do
    menu
    |> cast(attrs, [:name, :slug])
    |> validate_required([:name, :slug])
    |> unique_constraint(:slug)
  end
end
