defmodule DeeperServer.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :email, :string
    field :hashed_password, :string, redact: true
    # Campos virtuais não são persistidos no banco de dados.
    field :password, :string, virtual: true, redact: true
    field :password_confirmation, :string, virtual: true, redact: true
    field :confirmed_at, :naive_datetime

    belongs_to :role, DeeperServer.Accounts.Role
    has_one :profile, DeeperServer.Accounts.Profile

    timestamps()
  end

  @doc """
  A user changeset for registration and updates.
  """
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :password, :password_confirmation, :role_id])
    |> validate_email()
    |> validate_password()
    |> put_password_hash()
    |> cast_assoc(:profile)
    |> assoc_constraint(:role)
  end

  defp validate_email(changeset) do
    changeset
    |> validate_required([:email])
    |> validate_format(:email, ~r/^[^\s]+@[^\s]+$/, message: "must have the @ sign and no spaces")
    |> unique_constraint(:email)
  end

  defp validate_password(changeset) do
    changeset
    |> validate_required([:password, :password_confirmation])
    |> validate_length(:password, min: 8)
    |> validate_confirmation(:password)
  end

  defp put_password_hash(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: password}} ->
        put_change(changeset, :hashed_password, Pbkdf2.hash_pwd_salt(password))

      _ ->
        changeset
    end
  end
end
