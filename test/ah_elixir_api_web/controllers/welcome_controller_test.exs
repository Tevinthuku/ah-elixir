defmodule AhElixirApiWeb.WelcomeControllerTest do
  @moduledoc """
  This module has the tests for the welcome controllers
  """
    use AhElixirApiWeb.ConnCase

    test "index/2 responds with welcome message", %{conn: conn} do

      response =
        conn
        |> get("/")
        |> json_response(200)

      expected = %{
        "data" => %{
            "message" => "Welcome to the authors haven api"
        }
    }

      assert response == expected
    end

    test "table_of_content/2 responds with a table of content", %{conn: conn} do

      response =
        conn
        |> get("/api")
        |> json_response(200)

      expected = %{"data" => %{"endpoints" => %{"message" => "/ - home page"}}}

      assert response == expected
    end
  end
