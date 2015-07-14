require "socket"
require_relative "fact"

ms = TCPServer.new('localhost', 20000);
loop {
    Thread.start(ms.accept) do |client|
        puts "Hi";
        client.write(Time.now);
        client.write("\n");
        loop {
            inp = client.gets.chomp;
            if not inp.empty?
                out = fact(inp.to_s);
                client.puts(out);
                client.flush;
            else
                break;
            end
        }
        client.close;
        puts "Bye";
    end
}