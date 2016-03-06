defmodule EctoDemo.Repo.Migrations.AddClients do
  use Ecto.Migration

  def change do
    create table(:clients) do
      add :first_name, :string
    end
  end
end
