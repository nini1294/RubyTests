# a = 1 + 1 + 23
# puts a.to_s.reverse
aa = [1, 2, 3, 4, 5];

# aa.each { |e| puts e ** 2 }

def square (in)
    in.each { |e| puts e * 3 }
    puts Time.now
end

square aa