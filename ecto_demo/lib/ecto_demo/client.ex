defmodule EctoDemo.Client do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clients" do
    field :first_name, :string
  end

  def changeset(client, params \\ %{}) do
    client
    |> cast(params, ~w(first_name))
  end
end
