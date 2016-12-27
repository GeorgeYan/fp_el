defmodule Multiple do
  def run do
    generate(:fred)
    generate(:betty)
  end

  def test_processes(client) do
    receive do
      token ->
        send(client, token)
    end
  end

  def generate(token) do
    p  = spawn(Multiple, :test_processes, [self])
    send(p, token)
    receive do
      response -> IO.puts("the processes result is: #{response}")
    end
  end
end

Multiple.run

