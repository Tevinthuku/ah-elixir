# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ah_elixir_api,
  ecto_repos: [AhElixirApi.Repo]

# Configures the endpoint
config :ah_elixir_api, AhElixirApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TqmEQEDu6LCnAulLv8ge+8mQp02IOy9mkIT4ytHFybB9tWcQhgGnLjqkv3ZVhyAz",
  render_errors: [view: AhElixirApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AhElixirApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian config details
config :ah_elixir_api, AhElixirApi.Guardian,
       issuer: "ah_elixir_api",
       secret_key: "IElGufycT9CdmWZzeMw8rg+y0javyobzMZv7bDkoTFyBQkmHTMeYWXMEEjoPtOUZ"


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
