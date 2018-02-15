# Redefining, overriding, and super

# Redefining methods
class Rectangle
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def perimeter
		2 * (@length + @breadth)
	end

	def area
		@length * breadth
	end
end

# Since almost every method in Ruby can be redefined
# great care must be taken especially with core Ruby classes like Object, Array and so on.
# A thoughtless method redefinition can break the language entirely.
# A good rule of thumb is "Never redefine methods, ever, especially with classes supplied by the langauge"

class Integer
	def +(other)
		42
	end
end

puts 277 + 271
puts 287 + 27

puts
# Overriding methods
class MyArray < Array
	def map
		'in soviet russia...'
	end
end

# Note, above Integer has broken the method `+` by overriding the method `+`
puts Array.new([1, 3]).map { |n| n + 1 }
puts MyArray.new([1, 3]).map { |n| n + 1 }

puts
# Super Powered
class Animal
	def move
		"I can move"
	end
end

class Bird < Animal
	def move
		super + " by flying"
	end
end

puts Animal.new.move
puts Bird.new.move

puts
# practice
class Human < Animal
	def move
		super + " by walking"
	end
end

# Penguin can't fly, but which is a bird
# In this case, you can't use super and have to implement the entire message again
class Penguin < Bird
	def move
		"I can move by swimming"
	end
end
puts Human.new.move
puts Penguin.new.move

