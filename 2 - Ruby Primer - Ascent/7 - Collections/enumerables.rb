# Enumerators and Enumerables

# "Enumerable" is Ruby's way of saying that we can get elements out of a collection, one at a time.
puts [5, 3].each # Enumerator

[4, 8, 15, 16, 23, 42].each { |e| puts e }

# Enumerable is a module used as a mixin in the Array class.
# It provides a number of enumerators like map, select, inject.
# The enumerable module itself doesn't define the each method.

# Enumerator is an objectification of enumeration.
enum = [0, -1, 3, 2, 1, 3].each_with_index
p enum.select { |element, index| element < index }

class Array
  def map_with_index(&block)
    self.each_with_index.map(&block)
  end
end

puts [1, 2, 3].map_with_index
[1, 2, 3].map_with_index { |element, index| puts "#{index} - #{element}" }