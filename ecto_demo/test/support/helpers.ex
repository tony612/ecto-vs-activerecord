defmodule EctoDemo.TestHelpers do
  alias EctoDemo.{Repo, Client}

  def insert_client(attrs \\ %{}) do
    %Client{}
    |> Client.changeset(attrs)
    |> Repo.insert!
  end
end
