require "socket"

hostname = "localhost"
port = 2000

server = TCPServer.open(port)

loop {                         # Servers run forever
  client = server.accept       # Wait for a client to connect
  client.puts(Time.now.ctime)  # Send the time to the client
  for i in 1..10
    client.puts "Line #{i}"
  end
  client.close
}

s.close