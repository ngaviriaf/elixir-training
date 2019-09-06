defmodule Roman do
    def to_roman(number) do
        get_number(number)
    end

    defp get_number(number) when div(number, 1000) > 0 do
        "M" <> get_number(number - 1000)
    end

    defp get_number(number) when div(number, 900) > 0 do
        "CM" <> get_number(number - 900)
    end

    defp get_number(number) when div(number, 500) > 0 do
        "D" <> get_number(number - 500)
    end

    defp get_number(number) when div(number, 400) > 0 do
        "CD" <> get_number(number - 400)
    end

    defp get_number(number) when div(number, 100) > 0 do
        "C" <> get_number(number - 100)
    end

    defp get_number(number) when div(number, 90) > 0 do
        "XC" <> get_number(number - 90)
    end

    defp get_number(number) when div(number, 50) > 0 do
        "L" <> get_number(number - 50)
    end

    defp get_number(number) when div(number, 40) > 0 do
        "XL" <> get_number(number - 40)
    end

    defp get_number(number) when div(number, 10) > 0 do
        "X" <> get_number(number - 10)
    end

    defp get_number(number) when div(number, 9) > 0 do
        "IX" <> get_number(number - 9)
    end

    defp get_number(number) when div(number, 5) > 0 do
        "V" <> get_number(number - 5)
    end

    defp get_number(number) when div(number, 4) > 0 do
        "IV" <> get_number(number - 4)
    end

    defp get_number(number) when div(number, 1) > 0 do
        "I" <> get_number(number - 1)
    end

    defp get_number(number) do
        ""
    end
end