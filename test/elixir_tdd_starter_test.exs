defmodule ElixirTddStarterTest do
  use ExUnit.Case
  use ExUnit.Parameterized

  test_with_params "that calculator calculates correctly",
    fn (input, expected) ->
      # When the input is evaluated
      result = ElixirTddStarter.evaluate(input)

      # Then it equals the expected value
      assert result == expected
   end do
   [
     {"0", 0},
     # {"1", 1},
     # ...
     # {"1 + 1", 2},
     # {"(1 + 2) * 3", 9},
   ] end
end
