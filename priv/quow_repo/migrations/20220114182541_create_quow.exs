defmodule Discmap.QuowRepo.Migrations.CreateQuow do
  use Ecto.Migration

  def up do
    Enum.each(File.stream!("raw_queries/create_quow_items.sql"), &execute/1)
    Enum.each(File.stream!("raw_queries/create_quow_npc_info.sql"), &execute/1)
    Enum.each(File.stream!("raw_queries/create_quow_npc_items.sql"), &execute/1)
    Enum.each(File.stream!("raw_queries/create_quow_room_descriptions.sql"), &execute/1)
    Enum.each(File.stream!("raw_queries/create_quow_room_exits.sql"), &execute/1)
    Enum.each(File.stream!("raw_queries/create_quow_rooms.sql"), &execute/1)
    Enum.each(File.stream!("raw_queries/create_quow_shop_items.sql"), &execute/1)
    Enum.each(File.stream!("raw_queries/create_quow_user_data.sql"), &execute/1)
  end

  def down do
    execute "drop table items"
    execute "drop table npc_info"
    execute "drop table npc_items"
    execute "drop table room_descriptions"
    execute "drop table room_exits"
    execute "drop table rooms"
    execute "drop table shop_items"
    execute "drop table user_data"
  end
end
