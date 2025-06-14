defmodule DeeperServer.Repo.Migrations.CreateAccountsSchema do
  use Ecto.Migration

  def change do
    create table(:roles, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :description, :text
      timestamps()
    end
    create unique_index(:roles, [:name])

    create table(:profiles, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :full_name, :string
      add :bio, :text
      timestamps()
    end

    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :string, null: false
      add :hashed_password, :string, null: false
      add :confirmed_at, :naive_datetime
      add :profile_id, references(:profiles, on_delete: :delete_all, type: :binary_id)
      add :role_id, references(:roles, on_delete: :nothing, type: :binary_id)
      timestamps()
    end
    create unique_index(:users, [:email])

  end
end
