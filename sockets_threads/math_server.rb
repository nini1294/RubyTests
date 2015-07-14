require "socket"

ms = TCPServer.new('localhost', 20000);
loop {
    Thread.start(ms.accept) do |a|
        puts "Hi";
        a.write(Time.now);
        a.write("\n");
        puts "Bye";
    end
}

def fibo(n)
    return((n.to_i + 1).to_s);
end