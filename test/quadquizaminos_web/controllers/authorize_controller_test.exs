defmodule QuadquizaminosWeb.AuthorizeControllerTest do
  use QuadquizaminosWeb.IntegrationCase

  alias QuadquizaminosWeb.Router.Helpers, as: Routes

  test "users are restricted to access tetris page before logging", %{conn: conn} do
    conn
    |> get(Routes.live_path(conn, QuadquizaminosWeb.TetrisLive))
    |> assert_response(status: 302)
  end
end
