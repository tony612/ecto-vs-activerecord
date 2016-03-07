use Mix.Config

config :ecto_demo, EctoDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  hostname: System.get_env("PG_HOST") || "localhost",
  database: "ecto_demo",
  username: "postgres",
  password: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox

config :logger, level: :warn
