defmodule AhElixirApiWeb.UserView do
  use AhElixirApiWeb, :view
  def render("user.json", %{user: user, token: token}) do
    %{
    email: user.email,
    token: token
    }
  end

  def render("user_creation_failure.json", err) do
    %{
    error: "could not create user",
    }
  end
end
