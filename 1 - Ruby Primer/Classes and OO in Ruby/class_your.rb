# Building your own class
class Rectangle

	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def perimeter
		2 * (@length + @breadth)
	end

	def area
		@length * @breadth
	end

end

rectangle = Rectangle.new(2, 4)
puts rectangle.perimeter
puts rectangle.area