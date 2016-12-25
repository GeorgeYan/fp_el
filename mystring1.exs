defmodule MyString1 do
  def center(words) do
    max_length = (for x <- words, do: String.length(x))
                  |> Enum.max
    for x <- words, do: IO.puts center_word(x, max_length)
  end

  def center_word(word, length) do
    filler = String.duplicate(" ", div(length - String.length(word),2))
    filler <> word <> filler
  end
end
IO.inspect MyString1.center ~w{ cat zebra elephant }
