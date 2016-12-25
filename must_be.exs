defmodule MustBe do
  def ok!({:ok, data}), do: data
  def ok!({error_type, error_msg}), do: raise("#{error_type}: #{error_msg}")
end
stream = MustBe.ok!(File.open("/etc/passwd"))
IO.puts IO.stream(stream, :line) |> Enum.take(15)
#IO.puts MustBe.ok!(File.open("/etc/passwd")) |> IO.stream(:line) |> Enum.take(5)
