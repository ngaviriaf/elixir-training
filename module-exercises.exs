defmodule Exercises do
    def to_rna(dna) do
        Enum.map(dna, fn x -> 
            case x do
                ?A -> ?U
                ?C -> ?G
                ?T -> ?A
                ?G -> ?C
             _ -> raise "unknown"   
            end
        end)
    end


    def count_words(sentence) do
        sentence
        |> String.downcase
        |> String.split(" ", trim: true)
        |> Enum.reduce(%{}, &count(&1, &2))
    end

    def count(x, list) do
        Map.update(list, x, 1, &(&1 + 1))
    end

    
end