defmodule Json.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :firstname, :string
    field :perso, :boolean, default: false
    field :pro, :boolean, default: false
    field :uid, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:uid, :firstname, :email, :perso, :pro])
    |> validate_required([:uid, :firstname, :email, :perso, :pro])
  end
end
