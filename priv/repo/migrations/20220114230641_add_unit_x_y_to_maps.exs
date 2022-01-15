defmodule Discmap.Repo.Migrations.AddUnitXYToMaps do
  use Ecto.Migration

  def change do
    alter table(:maps) do
      add :unit_x, :integer
      add :unit_y, :integer
    end
  end
end
