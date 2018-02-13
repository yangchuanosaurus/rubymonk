# Blocks in Ruby
# The simplest explanation for a block is that 
# it is a piece of code that can't be stored in a variable 
# and isn't an object.
# It is, as a consequence, significantly faster than a lambda
# Rare instances where Ruby's "everything is an object" rule is broken

def demonstrate_block(number)
	yield(number)
end

puts demonstrate_block(1) { |number| number + 1 }

def calculate(a, b)
	yield(a, b)
end

puts calculate(100, 4) { |number, another_number| number * another_number }
puts calculate(100, 4) { |number, another_number| number + another_number }