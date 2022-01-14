defmodule DiscmapWeb.MapController do
  use DiscmapWeb, :controller

  alias Discmap.Maps
  alias Discmap.Maps.Map

  def index(conn, _params) do
    maps = Maps.list_maps()
    render(conn, "index.html", maps: maps)
  end

  def new(conn, _params) do
    changeset = Maps.change_map(%Map{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"map" => map_params}) do
    case Maps.create_map(map_params) do
      {:ok, map} ->
        conn
        |> put_flash(:info, "Map created successfully.")
        |> redirect(to: Routes.map_path(conn, :show, map))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    map = Maps.get_map!(id)
    render(conn, "show.html", map: map)
  end

  def edit(conn, %{"id" => id}) do
    map = Maps.get_map!(id)
    changeset = Maps.change_map(map)
    render(conn, "edit.html", map: map, changeset: changeset)
  end

  def update(conn, %{"id" => id, "map" => map_params}) do
    map = Maps.get_map!(id)

    case Maps.update_map(map, map_params) do
      {:ok, map} ->
        conn
        |> put_flash(:info, "Map updated successfully.")
        |> redirect(to: Routes.map_path(conn, :show, map))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", map: map, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    map = Maps.get_map!(id)
    {:ok, _map} = Maps.delete_map(map)

    conn
    |> put_flash(:info, "Map deleted successfully.")
    |> redirect(to: Routes.map_path(conn, :index))
  end
end
