# Basic Array Operations
array = [1, 2, 3, 4, 5].map { |i| i + 1}
puts array

# Ruby aliases the method Array#map to Array#collect
array = [1, 2, 3, 4, 5].collect { |i| i + 1}
puts array

# Filtering elements of an Array
filter_array = [1, 2, 3, 4, 5, 6].select { |number| number %2 == 0 }
puts filter_array

# Deleting elements
puts 'Deleting elements'
puts [1, 4, 6, 8, 13].delete(8)

puts [1, 2, 3, 4, 5, 6, 7, 8, 9].delete_if { |i| i % 2 == 0 }