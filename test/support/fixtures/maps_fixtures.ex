defmodule Discmap.MapsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Discmap.Maps` context.
  """

  @doc """
  Generate a map.
  """
  def map_fixture(attrs \\ %{}) do
    {:ok, map} =
      attrs
      |> Enum.into(%{
        filepath: "some filepath",
        name: "some name"
      })
      |> Discmap.Maps.create_map()

    map
  end
end
