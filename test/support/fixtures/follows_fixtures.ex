defmodule Discmap.FollowsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Discmap.Follows` context.
  """

  @doc """
  Generate a follow.
  """
  def follow_fixture(attrs \\ %{}) do
    {:ok, follow} =
      attrs
      |> Enum.into(%{
        username: "some username"
      })
      |> Discmap.Follows.create_follow()

    follow
  end
end
