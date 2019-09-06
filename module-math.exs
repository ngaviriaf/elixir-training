defmodule Math do
@moduledoc """

Provides math-related functions. 

##Examples

    iex> Math.sum(1,2)
    3

    iex> Math.zero?(0)
    true

"""

    @doc """
    Calculates the sum of two numbers.
    """
    def sum(a, b) do
        do_sum(a, b)
    end

    @doc """
    Actually does the sum operation. 
    """
    defp do_sum(a, b) do
        a + b
    end

    @doc """
    Returns true if a value is zero.
    """
    def zero?(0), do: true

    @doc """
    Returns false if a value is different of zero. 
    """
    def zero?(x) when is_integer(x), do: false

end

IO.puts Math.sum(1, 2)
IO.puts Math.zero?(0)
IO.puts Math.zero?(1)
