# Inheriting Class
class Rectangle
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def perimeter
		2 * (@length + @breadth)
	end
end

class Square < Rectangle
	def initialize(length)
		@length = @breadth = length
	end
end

rectange = Rectangle.new(2, 4)
puts rectange.perimeter
puts
square = Square.new(2)
puts square.perimeter