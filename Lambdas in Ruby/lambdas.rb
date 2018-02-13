# Lambdas, a lambda is just a function...peculiarly...without a name

# As objects, lambdas have methods and can be assigned to variables.
l = lambda { 'Do or do not' }
puts l.call

l = lambda do |string|
	if string == 'try'
		"There's no such thing"
	else
		"Do or do not"
	end
end
puts l.call("try1")
puts l.call("try")

Increment = lambda { |number| number + 1 }
puts Increment.call(2)