defmodule EctoDemoTest do
  use ExUnit.Case
  import Ecto.Query, only: [from: 2]

  alias EctoDemo.{Repo, Client}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "retrieving a single object - find single" do
    %Client{id: id} = Repo.insert!(Client.changeset(%Client{}))
    client = Repo.get_by(Client, id: id)
    assert %Client{id: ^id} = client
  end
end
