defmodule Beer do
    def sing() do
        Enum.each(99..0, &verse(&1))
    end

    defp verse(0) do
       IO.puts "No more bottles of beer on the wall, no more bottles of beer.\n
       Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

    defp verse(1) do
        IO.puts "1 bottle of beer on the wall, 1 bottle of beer.\n
        Take it down and pass it around, no more bottles of beer on the wall.\n"
    end

    defp verse(1) do
        IO.puts  "2 bottles of beer on the wall, 2 bottles of beer.\n
        Take one down and pass it around, 1 bottle of beer on the wall.\n"
    end

    defp verse(number) do
        IO.puts "#{number} bottles of beer on the wall, #{number} bottles of beer.
        \nTake one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    end
end