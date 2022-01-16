defmodule Discmap.Repo.Migrations.CreateRoomExits do
  use Ecto.Migration

  def change do
    create table(:room_exits) do
      add :room_id, :string
      add :connect_id, :string
      add :exit, :string
      add :guessed, :integer

      timestamps()
    end
  end
end
