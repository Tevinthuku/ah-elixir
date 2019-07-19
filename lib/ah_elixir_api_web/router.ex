defmodule AhElixirApiWeb.Router do
  use AhElixirApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AhElixirApiWeb do
    pipe_through :api
  end
end
