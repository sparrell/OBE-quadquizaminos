defmodule QuadquizaminosWeb.IntegrationCase do
  @moduledoc """
  set up phoenix integration
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      use QuadquizaminosWeb.ConnCase
      use PhoenixIntegration
    end
  end
end
