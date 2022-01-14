defmodule Discmap.Repo.Migrations.CreateFollows do
  use Ecto.Migration

  def change do
    create table(:follows) do
      add :username, :string

      timestamps()
    end
  end
end
