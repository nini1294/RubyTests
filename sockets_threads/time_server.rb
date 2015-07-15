require 'socket'

ts = TCPServer.new('localhost', 20_000)
loop do
  Thread.start(ts.accept) do |a|
    print(a, 'a is accepted\n')
    a.puts(Time.now)
    print(a, 'a is gone\n')
    a.close
  end
end
