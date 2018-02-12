# create an empty array
empty_array = []
puts "empty_array is #{empty_array}"

# Also do the same thing above by Array.new
other_empty_array = Array.new
puts "other_empty_array is #{other_empty_array}"

puts empty_array == other_empty_array # true

# Building arrays
# Arrays in Ruby allow you to store 
# any kind of objects in any combination with no restrictions on type
array = [1, 'two', 3, 4, 'five']
puts array[0]
puts array[4]
puts array[-1]
puts array[4] == array[-1] # using negative numbers

# Growing arrays
array << 6
array << 'seven'
array.push(8)
puts array