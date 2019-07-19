defmodule AhElixirApi.Repo do
  use Ecto.Repo,
    otp_app: :ah_elixir_api,
    adapter: Ecto.Adapters.Postgres
end
