defmodule Discmap.Repo.Migrations.AddCurrentRoomIdToUser do
  use Ecto.Migration

  def change do
    alter table :users do
      add :current_room_id, :string
    end
  end
end
