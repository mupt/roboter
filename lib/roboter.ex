defmodule Roboter do
  use Application
  @moduledoc """
  Documentation for Roboter.
  """

  @doc """
  Hello world.

  ## Examples

  """

  def start(_type, _args) do
    children = [ Plug.Adapters.Cowboy.child_spec(:http, Roboter.Router, [], port: 4000) ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
