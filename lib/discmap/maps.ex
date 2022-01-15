defmodule Discmap.Maps do
  @moduledoc """
  The Maps context.
  """

  import Ecto.Query, warn: false
  alias Discmap.Repo

  alias Discmap.Maps.Map
  alias Discmap.Maps.Room

  @doc """
  Returns the list of maps.

  ## Examples

      iex> list_maps()
      [%Map{}, ...]

  """
  def list_maps do
    Repo.all(Map)
  end

  @doc """
  Gets a single map.

  Raises `Ecto.NoResultsError` if the Map does not exist.

  ## Examples

      iex> get_map!(123)
      %Map{}

      iex> get_map!(456)
      ** (Ecto.NoResultsError)

  """
  def get_map!(id), do: Repo.get!(Map, id)

  @doc """
  Gets a single map by map_id.

  Raises `Ecto.NoResultsError` if the Map does not exist.

  ## Examples

      iex> get_map_by_map_id!(123)
      %Map{}

      iex> get_map_by_map_id!(456)
      ** (Ecto.NoResultsError)

  """
  def get_map_by_map_id!(map_id) do
    Repo.one(from(Map, where: [map_id: ^map_id], limit: 1))
  end

  @spec create_map(:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) ::
          any
  @doc """
  Creates a map.

  ## Examples

      iex> create_map(%{field: value})
      {:ok, %Map{}}

      iex> create_map(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_map(attrs \\ %{}) do
    %Map{}
    |> Map.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a map.

  ## Examples

      iex> update_map(map, %{field: new_value})
      {:ok, %Map{}}

      iex> update_map(map, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_map(%Map{} = map, attrs) do
    map
    |> Map.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a map.

  ## Examples

      iex> delete_map(map)
      {:ok, %Map{}}

      iex> delete_map(map)
      {:error, %Ecto.Changeset{}}

  """
  def delete_map(%Map{} = map) do
    Repo.delete(map)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking map changes.

  ## Examples

      iex> change_map(map)
      %Ecto.Changeset{data: %Map{}}

  """
  def change_map(%Map{} = map, attrs \\ %{}) do
    Map.changeset(map, attrs)
  end

  @doc """
  Returns the list of rooms.

  ## Examples

      iex> list_rooms()
      [%Map{}, ...]

  """
  def list_rooms do
    Repo.all(Room)
  end

  @doc """
  Gets a single room.

  Raises `Ecto.NoResultsError` if the Room does not exist.

  ## Examples

      iex> get_room!(123)
      %Room{}

      iex> get_room!(456)
      ** (Ecto.NoResultsError)

  """
  def get_room!(id), do: Repo.get!(Room, id)

  @doc """
  Gets a single room by room_short.

  Raises `Ecto.NoResultsError` if the Room does not exist.

  ## Examples

      iex> get_room_by_short!(123)
      %Room{}

      iex> get_room_by_short!(456)
      ** (Ecto.NoResultsError)

  """
  def get_room_by_room_short!(room_short) do
    # return first matching result
    Repo.one(from(Room, where: [room_short: ^room_short], limit: 1))
  end

  @doc """
  Gets a random room.

  ## Examples

      iex> get_random_room()
      %Room{}
  """
  def get_random_room do
    Repo.one(from(Room, limit: 1, order_by: fragment("RANDOM()")))
  end

end
