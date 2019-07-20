defmodule AhElixirApiWeb.WelcomeController do
    @moduledoc """
    this module has functions that are responsible for
    rendering the welcome messages that is welcome to the api and
    the api table of content
    """
    use AhElixirApiWeb, :controller

    @doc """
    this fn renders the welcome message
    """
    def index(conn, _params) do
        conn
        |> render("welcometoapi.json")
    end

    @doc """
    this fn renders the different endpoints for the application
    """
    def table_of_content(conn, _params) do
        conn
        |> render("api_table_of_content.json")
    end
end
