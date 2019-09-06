defmodule Bob do
    def answer(sentence) do
        cond do
            silent?(sentence) -> "Fine. Be that way!"
            shouting_question?(sentence) -> "Calm down, I know what I'm doing!"
            question?(sentence) -> "Sure."
            shouting?(sentence) -> "Whoa, chill out!"
            true -> "Whatever"
        end
    end

    defp silent?(sentence), do: "" == String.trim(sentence)
    defp shouting_question?(sentence), do: shouting?(sentence) && question?(sentence)
    defp question?(sentence), do: String.ends_with?(sentence, "?") 
    defp shouting?(sentence), do: sentence == String.upcase(sentence) 

end