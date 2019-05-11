defmodule Bloggy.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :first, :string
    field :last, :string
    field :pass, :string
    field :salt, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first, :last, :email, :salt, :pass])
    |> validate_required([:first, :last, :email, :salt, :pass])
  end
end
