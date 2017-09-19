defmodule HttpesoTest do
  use ExUnit.Case
  doctest Httpeso

  test "greets the world" do
    assert Httpeso.hello() == :world
  end
end
