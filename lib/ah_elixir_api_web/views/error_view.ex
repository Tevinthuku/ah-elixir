defmodule AhElixirApiWeb.ErrorView do
  use AhElixirApiWeb, :view

  @doc """
  render if there's an issue with the server
  """
  def render("500.json", _assigns) do
    %{errors: %{detail: "Internal Server Error"}}
  end
  def translate_errors(changeset) do
    Ecto.Changeset.traverse_errors(changeset, &translate_error/1)
  end

  @doc """
  renders in case of any error
  """
  def render("error.json", %{changeset: changeset}) do
    %{errors: %{details: translate_errors(changeset)}}
  end

  @doc """
  render if route is not found
  """
  def render("404.json", _assigns) do
    %{errors: %{detail: "Not Found"}}
  end
end
