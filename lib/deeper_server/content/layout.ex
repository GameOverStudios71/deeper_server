defmodule DeeperServer.Content.Layout do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "layouts" do
    field :name, :string
    field :template_path, :string

    timestamps()
  end

  def changeset(layout, attrs) do
    layout
    |> cast(attrs, [:name, :template_path])
    |> validate_required([:name, :template_path])
    |> unique_constraint(:name)
  end
end
