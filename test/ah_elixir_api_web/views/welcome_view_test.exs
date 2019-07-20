defmodule AhElixirApiWeb.WelcomeViewTest do
    @moduledoc """
    This module tests the welcome views of the app
    """
    use AhElixirApiWeb.ConnCase, async: true
    # Bring render/3 and render_to_string/3 for testing custom views
    import Phoenix.View

    test "renders welcometoapi.json" do
      assert render(AhElixirApiWeb.WelcomeView, "welcometoapi.json", []) == %{
        data: %{
            message: "Welcome to the authors haven api"
        }
    }
    end

    test "renders api_table_of_content.json" do
      assert render(AhElixirApiWeb.WelcomeView, "api_table_of_content.json", []) ==
      %{
        data: %{
            endpoints: %{
                message: "/ - home page"
            }
        }
    }
    end
  end
