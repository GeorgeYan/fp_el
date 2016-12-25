defmodule StringAndBinaries do
  def printable_ascii(sqs), do: Enum.all?(sqs, fn ch -> ch in ?\s..?~ end)

  def printable?(list) do
    Enum.all?(list, &(&1 in ?\s..?~))
  end

end

IO.inspect StringAndBinaries.printable_ascii('cat!')


IO.inspect StringAndBinaries.printable?('cat!')
