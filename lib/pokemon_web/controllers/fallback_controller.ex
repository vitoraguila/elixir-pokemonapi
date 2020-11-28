defmodule PokemonWeb.FallbackController do
  use PokemonWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(PokemonWeb.ErrorView)
    |> render("400.json", result: result)
  end
end