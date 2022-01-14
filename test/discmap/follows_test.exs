defmodule Discmap.FollowsTest do
  use Discmap.DataCase

  alias Discmap.Follows

  describe "follows" do
    alias Discmap.Follows.Follow

    import Discmap.FollowsFixtures

    @invalid_attrs %{username: nil}

    test "list_follows/0 returns all follows" do
      follow = follow_fixture()
      assert Follows.list_follows() == [follow]
    end

    test "get_follow!/1 returns the follow with given id" do
      follow = follow_fixture()
      assert Follows.get_follow!(follow.id) == follow
    end

    test "create_follow/1 with valid data creates a follow" do
      valid_attrs = %{username: "some username"}

      assert {:ok, %Follow{} = follow} = Follows.create_follow(valid_attrs)
      assert follow.username == "some username"
    end

    test "create_follow/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Follows.create_follow(@invalid_attrs)
    end

    test "update_follow/2 with valid data updates the follow" do
      follow = follow_fixture()
      update_attrs = %{username: "some updated username"}

      assert {:ok, %Follow{} = follow} = Follows.update_follow(follow, update_attrs)
      assert follow.username == "some updated username"
    end

    test "update_follow/2 with invalid data returns error changeset" do
      follow = follow_fixture()
      assert {:error, %Ecto.Changeset{}} = Follows.update_follow(follow, @invalid_attrs)
      assert follow == Follows.get_follow!(follow.id)
    end

    test "delete_follow/1 deletes the follow" do
      follow = follow_fixture()
      assert {:ok, %Follow{}} = Follows.delete_follow(follow)
      assert_raise Ecto.NoResultsError, fn -> Follows.get_follow!(follow.id) end
    end

    test "change_follow/1 returns a follow changeset" do
      follow = follow_fixture()
      assert %Ecto.Changeset{} = Follows.change_follow(follow)
    end
  end
end
