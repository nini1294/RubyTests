require "socket"

@a = 0;

timer = Thread.start do
    loop {
        @a = 0;
        puts @a + " req/s";
        sleep(1);
    }
end

loop {
    ss = TCPSocket.new('localhost', 20000);
    ss.recv(100);
    @a += 1;
    sleep 0.05;
}

timer.join;