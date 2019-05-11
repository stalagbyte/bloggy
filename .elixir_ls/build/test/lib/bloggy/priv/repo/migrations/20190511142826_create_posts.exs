defmodule Bloggy.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :string
      add :author, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:posts, [:author])
  end
end
