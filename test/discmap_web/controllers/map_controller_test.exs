defmodule DiscmapWeb.MapControllerTest do
  use DiscmapWeb.ConnCase

  import Discmap.MapsFixtures

  @create_attrs %{filepath: "some filepath", name: "some name"}
  @update_attrs %{filepath: "some updated filepath", name: "some updated name"}
  @invalid_attrs %{filepath: nil, name: nil}

  describe "index" do
    test "lists all maps", %{conn: conn} do
      conn = get(conn, Routes.map_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Maps"
    end
  end

  describe "new map" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.map_path(conn, :new))
      assert html_response(conn, 200) =~ "New Map"
    end
  end

  describe "create map" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.map_path(conn, :create), map: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.map_path(conn, :show, id)

      conn = get(conn, Routes.map_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Map"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.map_path(conn, :create), map: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Map"
    end
  end

  describe "edit map" do
    setup [:create_map]

    test "renders form for editing chosen map", %{conn: conn, map: map} do
      conn = get(conn, Routes.map_path(conn, :edit, map))
      assert html_response(conn, 200) =~ "Edit Map"
    end
  end

  describe "update map" do
    setup [:create_map]

    test "redirects when data is valid", %{conn: conn, map: map} do
      conn = put(conn, Routes.map_path(conn, :update, map), map: @update_attrs)
      assert redirected_to(conn) == Routes.map_path(conn, :show, map)

      conn = get(conn, Routes.map_path(conn, :show, map))
      assert html_response(conn, 200) =~ "some updated filepath"
    end

    test "renders errors when data is invalid", %{conn: conn, map: map} do
      conn = put(conn, Routes.map_path(conn, :update, map), map: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Map"
    end
  end

  describe "delete map" do
    setup [:create_map]

    test "deletes chosen map", %{conn: conn, map: map} do
      conn = delete(conn, Routes.map_path(conn, :delete, map))
      assert redirected_to(conn) == Routes.map_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.map_path(conn, :show, map))
      end
    end
  end

  defp create_map(_) do
    map = map_fixture()
    %{map: map}
  end
end
