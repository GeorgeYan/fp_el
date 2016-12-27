defmodule MyList1 do

  def span(from, to) when from > to, do: []

  def span(from, to), do: [ from | span(from+1, to) ]

  def primes_up_to(n) do
    range = span(2, n)
    range -- (for a <- range, b <- range, a <= b, a*b <= n, do: a*b)
  end

end

IO.inspect MyList1.primes_up_to(40) #=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]
