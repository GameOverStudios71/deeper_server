defmodule DeeperServer.Repo.Migrations.CreateMenusAndMenuItems do
  use Ecto.Migration

  def change do
    create table(:menus) do
      add :name, :string, null: false
      add :slug, :string, null: false

      timestamps()
    end

    create unique_index(:menus, [:slug])

    create table(:menu_items) do
      add :label, :string, null: false
      add :url, :string, null: false
      add :order, :integer, null: false, default: 0
      add :menu_id, references(:menus, on_delete: :delete_all), null: false
      add :parent_id, references(:menu_items, on_delete: :delete_all)

      timestamps()
    end

    create index(:menu_items, [:menu_id])
    create index(:menu_items, [:parent_id])
  end
end
