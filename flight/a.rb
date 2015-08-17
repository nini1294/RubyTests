require 'json'
require 'awesome_print'

a = 1 + 1
puts a

b = {a: a}
b[:b] = b
ap b

x = [1, 'a']
ap x

class Array
  def boohoo
    puts self
  end

  def self.boohoo
    puts 'He'
  end
end

x.boohoo
Array.boohoo
