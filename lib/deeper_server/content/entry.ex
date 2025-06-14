defmodule DeeperServer.Content.Entry do
  use Ecto.Schema
  import Ecto.Changeset

  alias DeeperServer.Accounts.User
  alias DeeperServer.Content.ContentType

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "entries" do
    field :title, :string
    field :slug, :string
    field :status, :string, default: "draft"
    field :published_at, :naive_datetime

    belongs_to :author, User
    belongs_to :content_type, ContentType

    timestamps()
  end

  def changeset(entry, attrs) do
    entry
    |> cast(attrs, [:title, :slug, :status, :published_at, :author_id, :content_type_id])
    |> validate_required([:title, :slug, :status, :author_id, :content_type_id])
    |> unique_constraint(:slug, name: :entries_slug_content_type_id_index)
  end
end
