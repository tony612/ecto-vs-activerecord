defmodule EctoDemoTest do
  use ExUnit.Case
  import Ecto.Query, only: [from: 2]
  import EctoDemo.TestHelpers

  alias EctoDemo.{Repo, Client}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "retrieving a single object" do
    %Client{id: id} = insert_client
    client = Repo.get_by(Client, id: id)
    assert %Client{id: ^id} = client
  end
end
