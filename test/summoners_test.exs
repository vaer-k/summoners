defmodule SummonersTest do
  use ExUnit.Case
  doctest Summoners

  test "greets the world" do
    assert Summoners.hello() == :world
  end
end
