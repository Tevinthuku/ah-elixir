use Mix.Config

# Configure your database
config :ah_elixir_api, AhElixirApi.Repo,
  username: "tev",
  password: "8279",
  database: "ah_elixir_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ah_elixir_api, AhElixirApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
