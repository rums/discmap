defmodule Discmap.Maps.RoomExit do
  use Ecto.Schema
  import Ecto.Changeset

  schema "room_exits" do
    field :connect_id, :string
    field :exit, :string
    field :guessed, :integer
    field :room_id, :string

    timestamps()
  end

  @doc false
  def changeset(room_exit, attrs) do
    room_exit
    |> cast(attrs, [:room_id, :connect_id, :exit, :guessed])
    |> validate_required([:room_id, :connect_id, :exit, :guessed])
  end
end
