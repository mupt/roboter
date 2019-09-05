defmodule RoboterTest do
  use ExUnit.Case
  doctest Roboter

  test "greets the world" do
    assert Roboter.hello() == :world
  end
end
