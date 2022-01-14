defmodule Discmap.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      add :room_id, :string
      add :map_id, :string
      add :xpos, :integer
      add :ypos, :integer
      add :room_short, :string
      add :room_type, :string

      timestamps()
    end
    Enum.each(File.stream!("raw_queries/insert_rooms.sql"), &execute/1)
  end
end
