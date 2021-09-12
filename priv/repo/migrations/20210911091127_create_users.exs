defmodule Json.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :uid, :string
      add :firstname, :string
      add :email, :string
      add :perso, :boolean, default: false, null: false
      add :pro, :boolean, default: false, null: false

      timestamps()
    end

  end
end
