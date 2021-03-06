defmodule EctoDemo.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_demo,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps]
  end

  def application do
    [applications: [:logger, :postgrex, :ecto],
     mod: {EctoDemo, {}}]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [{:ecto, "~> 2.0.0-beta.2"},
     {:postgrex, ">= 0.0.0"}]
  end
end
