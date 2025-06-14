defmodule DeeperServer.Repo.Migrations.CreateBlocks do
  use Ecto.Migration

  def change do
    create table(:block_types, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :slug, :string, null: false
      add :description, :string
      timestamps()
    end
    create unique_index(:block_types, [:slug])

    create table(:entry_blocks, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :order, :integer, null: false, default: 0
      add :entry_id, references(:entries, on_delete: :delete_all, type: :binary_id)
      add :block_type_id, references(:block_types, on_delete: :restrict, type: :binary_id)
      timestamps()
    end
    create index(:entry_blocks, [:entry_id])
  end
end
