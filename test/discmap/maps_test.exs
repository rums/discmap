defmodule Discmap.MapsTest do
  use Discmap.DataCase

  alias Discmap.Maps

  describe "maps" do
    alias Discmap.Maps.Map

    import Discmap.MapsFixtures

    @invalid_attrs %{filepath: nil, name: nil}

    test "list_maps/0 returns all maps" do
      map = map_fixture()
      assert Maps.list_maps() == [map]
    end

    test "get_map!/1 returns the map with given id" do
      map = map_fixture()
      assert Maps.get_map!(map.id) == map
    end

    test "create_map/1 with valid data creates a map" do
      valid_attrs = %{filepath: "some filepath", name: "some name"}

      assert {:ok, %Map{} = map} = Maps.create_map(valid_attrs)
      assert map.filepath == "some filepath"
      assert map.name == "some name"
    end

    test "create_map/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Maps.create_map(@invalid_attrs)
    end

    test "update_map/2 with valid data updates the map" do
      map = map_fixture()
      update_attrs = %{filepath: "some updated filepath", name: "some updated name"}

      assert {:ok, %Map{} = map} = Maps.update_map(map, update_attrs)
      assert map.filepath == "some updated filepath"
      assert map.name == "some updated name"
    end

    test "update_map/2 with invalid data returns error changeset" do
      map = map_fixture()
      assert {:error, %Ecto.Changeset{}} = Maps.update_map(map, @invalid_attrs)
      assert map == Maps.get_map!(map.id)
    end

    test "delete_map/1 deletes the map" do
      map = map_fixture()
      assert {:ok, %Map{}} = Maps.delete_map(map)
      assert_raise Ecto.NoResultsError, fn -> Maps.get_map!(map.id) end
    end

    test "change_map/1 returns a map changeset" do
      map = map_fixture()
      assert %Ecto.Changeset{} = Maps.change_map(map)
    end
  end
end
