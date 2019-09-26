defmodule RoboterTest do
  use ExUnit.Case
  use Plug.Test

  doctest Roboter

  alias Roboter.Router

  @opts Router.init([])
  test "responds to greetings" do
    conn =
      conn(:post, "/webhook", "")
      |> Router.call(@opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "ohai"
  end
end
