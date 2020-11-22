defmodule PokemonWeb.WelcomeController do
  use PokemonWeb, :controller

  def index(conn, _) do
    text(conn, "Welcome to the PokemonWeb");
  end
end