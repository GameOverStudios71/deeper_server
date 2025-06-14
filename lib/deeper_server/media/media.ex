defmodule DeeperServer.Media.Media do
  use Ecto.Schema
  import Ecto.Changeset

  schema "media" do
    field :filename, :string
    field :path, :string
    field :mime_type, :string
    field :size, :integer
    field :alt_text, :string

    timestamps()
  end

  @doc false
  def changeset(media, attrs) do
    media
    |> cast(attrs, [:filename, :path, :mime_type, :size, :alt_text])
    |> validate_required([:filename, :path, :mime_type, :size])
  end
end
