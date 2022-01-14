defmodule Discmap.Repo.Migrations.CreateMaps do
  use Ecto.Migration

  def change do
    create table(:maps) do
      add :name, :string
      add :filepath, :string

      timestamps()
    end
  end
end
