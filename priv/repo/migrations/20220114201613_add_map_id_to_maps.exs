defmodule Discmap.Repo.Migrations.AddMapIdToMaps do
  use Ecto.Migration

  def change do
    alter table(:maps) do
      add(:map_id, :string)
    end
  end
end
