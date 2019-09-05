

defmodule AhElixirApiWeb.UserController do
  @moduledoc """
  this module has functions that are responsible for
  rendering the welcome messages that is welcome to the api and
  the api table of content
  """
  use AhElixirApiWeb, :controller

  alias AhElixirApi.Accounts
  alias AhElixirApi.Accounts.User
  alias AhElixirApi.Guardian

  action_fallback AhElixirApiWeb.FallbackController

  def create(conn, %{"user" => user_param}) do
    with {:ok, %User{} =user} <- Accounts.create_user(user_param),
         {:ok, token, _claims} <- Guardian.encode_and_sign(user) do
      conn
      |> put_status(:created)
      |> render("user.json", %{user: user, token: token})
    end
  end
end
