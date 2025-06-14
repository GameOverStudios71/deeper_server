defmodule DeeperServer.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias DeeperServer.Repo

  # Importando os schemas para facilitar o uso
  alias DeeperServer.Accounts.User
  alias DeeperServer.Accounts.Profile
  alias DeeperServer.Accounts.Role

  # Usando ContextKit para gerar CRUD para cada schema
  use ContextKit.CRUD, repo: Repo, schema: User, queries: __MODULE__
  use ContextKit.CRUD, repo: Repo, schema: Profile, queries: __MODULE__
  use ContextKit.CRUD, repo: Repo, schema: Role, queries: __MODULE__

  def apply_query_option(_option, query), do: query

  @doc """
  Registers a user.

  ## Examples

      iex> register_user(%{email: "foo@bar.com", password: "some password"})
      {:ok, %User{}}

      iex> register_user(%{email: "foo@bar.com"})
      {:error, %Ecto.Changeset{}}

  """
  def register_user(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def login_user_by_email_and_password(email, provided_password) do
    user = Repo.get_by(User, email: email)

    if user && Pbkdf2.verify_pass(provided_password, user.hashed_password) do
      {:ok, user}
    else
      {:error, :unauthorized}
    end
  end
end
