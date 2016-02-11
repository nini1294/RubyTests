#! ruby -wU
puts "Hello"
a = File.open("Hello.txt", "a+")
a.puts 'Hi'
a.close()

