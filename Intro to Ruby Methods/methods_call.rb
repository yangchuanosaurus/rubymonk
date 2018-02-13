# Calling a method
def add(a_number, another_number)
	a_number + another_number
end

puts add(1, 2)

# Parameters can have default values too. Let's say we usually add three numbers
def add_(a_number, another_number, yet_another_number = 0)
	a_number + another_number + yet_another_number
end

puts add_(1, 2, 3)
puts add_(1, 2)

def say_hello(name='Albert Zhao')
	"Hello, #{name}."
end

puts say_hello('Albert')
puts say_hello

# Arraying your arguments, using splat operator
def sum(*numbers)
	numbers.inject(0) { |sum, number| sum + number }
end

puts sum(1)
puts sum(1, 2, 3)

numbers_to_sum = [1, 2, 3, 4, 5]
puts sum(*numbers_to_sum)

# Naming parameters
def add(a_number, another_number, options = {})
	sum = a_number + another_number
	sum = sum.abs if options[:absolute]
	sum = sum.round(options[:precision]) if options[:round]
	sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)