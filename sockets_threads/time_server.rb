require 'socket'

ts = TCPServer.new('localhost', 20_005)
loop do
  Thread.start(ts.accept) do |a|
    puts("#{a} is accepted")
    a.puts(Time.now)
    puts("#{a} is gone")
    a.close
  end
end
