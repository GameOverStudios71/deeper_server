defmodule DeeperServer.Repo.Migrations.CreateMedia do
  use Ecto.Migration

  def change do
    create table(:media) do
      add :filename, :string, null: false
      add :path, :string, null: false
      add :mime_type, :string, null: false
      add :size, :integer, null: false
      add :alt_text, :string

      timestamps()
    end
  end
end
