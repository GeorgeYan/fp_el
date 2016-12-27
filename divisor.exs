defmodule Divisor do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end

IO.puts Divisor.gcd(20, 15)
