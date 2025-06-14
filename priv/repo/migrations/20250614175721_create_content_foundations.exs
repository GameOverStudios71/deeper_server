defmodule DeeperServer.Repo.Migrations.CreateContentFoundations do
  use Ecto.Migration

  def change do
    create table(:layouts, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :template_path, :string, null: false
      timestamps()
    end
    create unique_index(:layouts, [:name])

    create table(:content_types, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :slug, :string, null: false
      add :description, :string
      add :layout_id, references(:layouts, on_delete: :nothing, type: :binary_id)
      timestamps()
    end
    create unique_index(:content_types, [:slug])
  end
end
