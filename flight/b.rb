require 'awesome_print'

x = 1 + 1
y = 2 + 2
z = 3 + 3
a = {x: x}
b = {y: y}
c = {z: z}
a[:next] = b
b[:next] = c


ap depth(a, 0)
ap depth(a, 1)
ap depth(a, 2)

def depth(hash, d)
  d.times do
    hash = hash[:next]
  end
  hash
end

puts a
