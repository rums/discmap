defmodule Discmap.QuowRepo.Migrations.CreateQuowMapFile do
  use Ecto.Migration

  def up do
    Enum.each(File.stream!("raw_queries/create_quow_map_file.sql"), &execute/1)
  end

  def down do
    execute "drop table map_file"
  end
end
