require "socket"

ts = TCPServer.new('localhost', 20000);
loop {
    Thread.start(ts.accept) do |a|
        print(a, "a is accepted\n");
        a.write(Time.now);
        print(a, "a is gone\n");
        a.close
    end
}