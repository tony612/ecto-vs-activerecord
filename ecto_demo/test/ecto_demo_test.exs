defmodule EctoDemoTest do
  use ExUnit.Case
  import Ecto.Query, only: [from: 2]
  import EctoDemo.TestHelpers

  alias EctoDemo.{Repo, Client}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "retrieving a single object - find single" do
    insert_client
    %Client{id: id} = insert_client
    client = Repo.get_by(Client, id: id)
    assert %Client{id: ^id} = client
  end

  test "retrieving a single object - find multiple" do
    %Client{id: id1} = insert_client
    %Client{id: id2} = insert_client
    ids = [id1, id2]
    query = from c in Client, where: c.id in ^ids
    clients = Repo.all(query)
    assert [%Client{id: ^id1}, %Client{id: ^id2}] = clients
  end

  test "retrieving a single object - take first" do
    %Client{id: id} = insert_client
    query = from Client, limit: 1
    client = Repo.one(query)
    assert %Client{id: ^id} = client
  end

  test "retrieving a single object - take first n" do
    %Client{id: id1} = insert_client
    %Client{id: id2} = insert_client
    query = from Client, limit: 2
    clients = Repo.all(query)
    assert [%Client{id: ^id1}, %Client{id: ^id2}] = clients
  end
end
