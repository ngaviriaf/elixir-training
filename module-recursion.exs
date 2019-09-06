defmodule Recursion do
    def print_multiple_times(msg, n) when n <= 1  do
        IO.puts msg
    end

    def print_multiple_times(msg, n) do
        IO.puts msg
        print_multiple_times(msg, n - 1)
    end

    def sum_list([head | tail], acum) do  # Reduce algorithm
        sum_list(tail, head + acum)
    end

    def sum_list([], acum) do
        acum     
    end

    def double_list([head | tail]) do # Map algorithm
        [head * 2 | double_list(tail)]
    end

    def double_list([]) do
        []
    end
end

Recursion.print_multiple_times("So many times", 3)
IO.puts Recursion.sum_list([1, 2, 3], 0)
IO.puts Recursion.double_list([1, 2, 3])