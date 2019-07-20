defmodule AhElixirApiWeb.ErrorView do
  use AhElixirApiWeb, :view

  @doc """
  render if theres an issue with the server
  """
  def render("500.json", _assigns) do
    %{errors: %{detail: "Internal Server Error"}}
  end

  @doc """
  render if route is not found
  """
  def render("404.json", _assigns) do
    %{errors: %{detail: "Not Found"}}
  end
end
