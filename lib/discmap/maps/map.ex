defmodule Discmap.Maps.Map do
  use Ecto.Schema
  import Ecto.Changeset

  schema "maps" do
    field :filepath, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(map, attrs) do
    map
    |> cast(attrs, [:name, :filepath])
    |> validate_required([:name, :filepath])
  end
end
