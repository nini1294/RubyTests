# a = 1 + 1 + 23
# puts a.to_s.reverse
aa = [1, 2, 3, 4, 5];

# aa.each { |e| puts e ** 2 }

# Function
def square (userin)
    userin.each { |e| puts e * 3 }
    puts Time.now
end

# square aa

# Some string and regex stuff
bb = "Hello33World"
# puts bb.reverse
# puts bb
# puts bb[0,bb.length - 1]
# bb.scan(/^Hell/) {|m| puts m}
# puts md
# bbarr = bb.each_char.to_a
# puts bbarr

# Array and '..' operator
# cc = (-2..2).to_a
# puts cc.to_s

# Repetetion stuff
ct = 10
arr1 = Array.new(ct)
ct.times { |n| arr1[n] = (n) ** 2 }
# puts arr.to_s
arr2 = Array.new(ct) { |i| i ** 2 }
arr1[arr1.length] = 2
# puts arr1.to_s


# Hashes and things
# dd = Hash["a", 'a'.ord, "b", 'b'.ord]
# puts dd.keys
# puts dd.values
ee = {}
ct.times { |n| ee[('a'.ord + n).chr] = 'a'.ord + n}
# puts ee.keys.to_s
# puts ee.values.to_s
puts ee.select { |e| ee[e] > 100}