defmodule DeeperServer.Accounts.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "profiles" do
    field :full_name, :string
    field :bio, :string

    belongs_to :user, DeeperServer.Accounts.User, type: :binary_id

    timestamps()
  end

  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:full_name, :bio, :user_id])
    |> validate_required([:full_name])
    |> assoc_constraint(:user)
  end
end
