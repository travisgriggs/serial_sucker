defmodule SerialSuckerTest do
  use ExUnit.Case
  doctest SerialSucker

  test "greets the world" do
    assert SerialSucker.hello() == :world
  end
end
