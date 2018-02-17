# Using the API
puts [4, 8, 15, 16, 23, 42].count # size of the array

puts [42, 8, 15, 16, 23, 42].count(42) # count how many the `42` present in the array
puts ["Jacob", "Alexandra", "Mikhail", "Karl", "Dogen", "Jacob"].count("Jacob")

puts [4, 8, 15, 16, 23, 42].count { |e| e.even? }

# The index method returns the index of the object specified.
# if a block is given it returns the index of the first element for which the block results to true
puts [4, 8, 15, 16, 23, 42].index(15)
puts [4, 8, 15, 16, 23, 42].index { |e| e % 2 == 0 } 

# The flatten method returns a one-dimensional array representation of the array.
p [4, 8, 15, 16, 23, 42].flatten
p [4, [8], [15], [16, [23, 42]]].flatten

# You can also restrict the number of levels flatten will jump in to.
p [4, [8], [15], [16, [23, 42]]].flatten(1)

# The compact method returns a new array with all the nil elements removed
p [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil].compact

def zzen(array)
	converted = array.compact.flatten
	converted.index(42) == 5 ? converted.count : nil
end

# THe zip method expects variable number of arguments and returns an array of arrays that contain corresponding elements
# from each array.
p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])

# Slice is same as using the literal [] form for extracting subarrays
p [4, 8, 15, 16, 23, 42].slice(2)
p [4, 8, 15, 16, 23, 42].slice(2..5)

# join is useful for joining all the array elements into a string.
p [4, 8, 15, 16, 23, 42].join(", ")

# shift removes the first element of the array and returns it
p [4, 8, 15, 16, 23, 42].shift
p [4, 8, 15, 16, 23, 42].shift(2)

# unshift takes a variable number of arguments and adds them to the beginning of the array. 
p [8, 15, 16, 23, 42].unshift(4) # [4, 8, 15, 16, 23, 42]
p [16, 23, 42].unshift(4, 8, 15) # [4, 8, 15, 16, 23, 42]

# pack returns a packed string of the array elements converted into appropriate binary sequences
p [177, 8978].pack("UU")
p [177, 8978].pack("U*")