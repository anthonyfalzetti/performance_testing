defmodule PerformanceTestingTest do
  use ExUnit.Case
  doctest PerformanceTesting

  test "greets the world" do
    assert PerformanceTesting.hello() == :world
  end
end
