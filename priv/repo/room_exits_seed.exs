# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Discmap.Repo.insert!(%Discmap.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
use Ecto.Migration

Enum.each(File.stream!("raw_queries/insert_room_exits.sql"), &execute/1)
