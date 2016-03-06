defmodule EctoDemo do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    tree = [supervisor(EctoDemo.Repo, [])]
    opts = [name: EctoDemo.Supervisor, strategy: :one_for_one]
    Supervisor.start_link(tree, opts)
  end
end
