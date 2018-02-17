# Ripping the Guts

# Destructuring
zen, life = [42, 43] # We've broken down the array and assigned its values to zen and life.

zen, john = [[4, 8], [3, 16], [23, 42, 15]] # expectedly select the first two inner-arrays

# zen [4, 8]
# john [3, 16]

def dest
	[42, true]
end

x, y = dest
# x 42
# y true

[[1, 2, 3, 4], [42, 43]].each do |element|
	a, b = element
	# puts "#{a}, #{b}"
end

def compute(ary)
	return nil unless ary
	ary.map { |(a, b)| !b.nil? ? a + b : a }
end


#compute([[4, 8], [15, 16]])
compute([[4], [15, 16]])

zen, life, more = [42, 43]
# zen 42
# life 43
# more nil

# The splat
car, *cdr = [42, 43, 44]
# car 42
# cdr [43, 44]

*initial, last = [42, 43, 44]
# initial [42, 43]
# last 44

*initial, second, last = [42, 43, 44]
# initial [42]
# second 43
# last 44

def des(*args)
	[args.first, args.last]
end

# p des(42, 43, 44, 45, 46)
# practice
def median_numbers(*list)
	return nil until !list.empty?
	length = list.size
	
	if !length.even?
		first, second = [(length + 1) / 2]
	else
		first, second = [length / 2, length / 2 + 1]
	end

	second.nil? ? list[first - 1] : [list[first - 1], list[second - 1]]
end

puts median_numbers(nil)
puts median_numbers(*[])
puts median_numbers(1, 2, 3, 5, 6, 7, 9)

#
zen = *(1..42)
str = *"Zen"  # Array ["Zen"]

#
[[1, 2, 3, 4], [42, 43]].each { |a, *b| puts "#{a} #{b}"}

puts
# Hash is often created using the array from that takes in even number of arguments as key-value paires
puts Hash[4, 8]
puts Hash[ [4, 8], [15, 16] ]

puts
ary = [ [4, 8], [15, 16], [23, 42] ]
puts ary.flatten
puts Hash[*ary.flatten]

