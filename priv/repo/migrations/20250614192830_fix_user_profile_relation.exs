defmodule DeeperServer.Repo.Migrations.FixUserProfileRelation do
  use Ecto.Migration

  def change do
    # Remove a coluna incorreta da tabela users
    alter table(:users) do
      remove :profile_id
    end

    # Adiciona a coluna correta na tabela profiles
    alter table(:profiles) do
      add :user_id, references(:users, on_delete: :delete_all, type: :binary_id)
    end
  end
end
