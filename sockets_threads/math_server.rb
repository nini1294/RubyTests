require 'socket'
require_relative 'fact'

ms = TCPServer.new('localhost', 20_000)
loop do
  Thread.start(ms.accept) do |client|
    puts 'Hi'
    client.write(Time.now)
    client.write('\n')
    loop do
      inp = client.gets.chomp
      if !inp.empty?
        out = fact(inp.to_s)
        client.puts(out)
        client.flush
      else
        break
      end
    end
    client.close
    puts 'Bye'
  end
end
