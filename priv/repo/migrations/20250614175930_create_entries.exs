defmodule DeeperServer.Repo.Migrations.CreateEntries do
  use Ecto.Migration

  def change do
    create table(:entries, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string, null: false
      add :slug, :string, null: false
      add :status, :string, null: false, default: "draft"
      add :published_at, :naive_datetime
      add :author_id, references(:users, type: :binary_id)
      add :content_type_id, references(:content_types, on_delete: :restrict, type: :binary_id)

      timestamps()
    end
    create index(:entries, [:slug, :content_type_id], unique: true)
    create index(:entries, [:status])
  end
end
