defmodule AhElixirApiWeb.WelcomeView do
    @moduledoc """
    This module renders the welcome views to our api consumers
    """
    use AhElixirApiWeb, :view

    @doc """
    this renders the default message in the home route
    """
    def render("welcometoapi.json", _params) do
        %{
            data: %{
                message: "Welcome to the authors haven api"
            }
        }
    end
    @doc """
    this renders the endpoints table of contents
    """
    def render("api_table_of_content.json", _params) do
        %{
            data: %{
                endpoints: %{
                    message: "/ - home page"
                }
            }
        }
    end
end
