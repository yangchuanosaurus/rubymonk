def check_sign(number)
	if number > 0
		"#{number} is positive"
	elsif number == 0
		'0'
	else
		"#{number} is negative"
	end
end

puts check_sign(0)
puts check_sign(1)
puts check_sign(-1)

# Ruby also has an unless keyword that can be used in places where you want to check for a negative condition
# unless x is equivalent to if !x
age = 10
unless age >= 18
	puts "Sorry, you need to be at least eighteen to drive a car. Grow up fast!"
end

# Truthiness of objects in Ruby
# The condition statements `if` and `unless` can also use expressions that return an object that is not either ture or false
# In such cases, the objects false and nil equiates to false. Every other object like say 1, 0, "" are all evaluated to be true.

def check_true(condition)
	condition ? "#{condition} is true" : "#{condition} is false"
end

puts check_true(0)
puts check_true(-1)
puts check_true(false)
puts check_true(nil)