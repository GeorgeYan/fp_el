defmodule Chop do
  def guess(num, low..high) when num > div(high + low, 2) do
    IO.puts "Is it #{div(high + low, 2)}"
    guess(num, div(high + low, 2)..high)
  end
  def guess(num, low..high) when num < div(high + low, 2) do
    IO.puts "Is it #{div(high + low, 2)}"
    guess(num, low..div(high + low, 2))
  end
  def guess(num, low..high) do
    IO.puts num
  end
end

Chop.guess(273, 1..1000)

