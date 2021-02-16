defmodule QuadquizaminosWeb.Authorize do
  @moduledoc """
  Authorization plug
  """
  import Plug.Conn
  use QuadquizaminosWeb, :controller

  def init(opts), do: opts

  def call(conn, _opts) do
    current_user = Map.get(conn.assigns, :current_user)
    authorize_user(current_user, conn)
  end

  defp authorize_user(nil, conn) do
    conn
    |> put_flash(:error, "Please login first")
    |> redirect(to: "/")
    |> halt()
  end

  defp authorize_user(user, conn), do: conn
end
