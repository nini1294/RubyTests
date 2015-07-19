require 'socket'

@a = 0

timer = Thread.start do
  loop do
    @a = 0
    puts @a + ' req/s'
    sleep(1)
  end
end

loop do
  ss = TCPSocket.new('localhost', 20_005)
  ss.recv(100)
  @a += 1
  sleep 0.05
end

timer.join
