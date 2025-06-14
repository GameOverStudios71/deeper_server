defmodule DeeperServer.Content.ContentType do
  use Ecto.Schema
  import Ecto.Changeset

  alias DeeperServer.Content.Layout

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "content_types" do
    field :name, :string
    field :slug, :string
    field :description, :string

    belongs_to :layout, Layout

    timestamps()
  end

  def changeset(content_type, attrs) do
    content_type
    |> cast(attrs, [:name, :slug, :description, :layout_id])
    |> validate_required([:name, :slug, :layout_id])
    |> unique_constraint(:slug)
  end
end
