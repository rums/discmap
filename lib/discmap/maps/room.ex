defmodule Discmap.Maps.Room do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rooms" do
    field :map_id, :string
    field :room_id, :string
    field :room_short, :string
    field :room_type, :string
    field :xpos, :integer
    field :ypos, :integer

    timestamps()
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:room_id, :map_id, :xpos, :ypos, :room_short, :room_type])
    |> validate_required([:room_id, :map_id, :xpos, :ypos, :room_short, :room_type])
  end
end
