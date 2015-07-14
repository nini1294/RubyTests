require "daemons"

i = 0

fname = "Hello.txt"
mfile = File.open(fname, "w")

while true
  mfile.puts i
  i = i + 1
  sleep(0.5)
  trap("INT") {
    puts "\nDone"
    mfile.close()
    exit()
  }
end
