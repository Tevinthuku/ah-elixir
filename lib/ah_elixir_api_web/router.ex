defmodule AhElixirApiWeb.Router do
  use AhElixirApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AhElixirApiWeb do
    pipe_through :api
    get "/", WelcomeController, :index
  end

  scope "/api", AhElixirApiWeb do
    pipe_through :api
    get "/", WelcomeController, :table_of_content
  end
end
