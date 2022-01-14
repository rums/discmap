defmodule Discmap.Follows.Follow do
  use Ecto.Schema
  import Ecto.Changeset

  schema "follows" do
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(follow, attrs) do
    follow
    |> cast(attrs, [:username])
    |> validate_required([:username])
  end
end
