defmodule Bloggy.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first, :string
      add :last, :string
      add :email, :string
      add :salt, :string
      add :pass, :string

      timestamps()
    end

  end
end
