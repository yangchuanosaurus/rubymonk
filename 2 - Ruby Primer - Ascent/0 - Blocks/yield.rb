def calculation(a, b, operation)
	operation.call(a, b)
end

puts calculation(5, 6, lambda {|a, b| a + b } )
puts calculation(5, 6, lambda {|a, b| a - b } )

def calculation(a, b)
	yield(a, b)
end

puts calculation(5, 6) {|a, b| a + b }
puts calculation(5, 6) {|a, b| a - b }

def foo
	yield
end

foo { puts "sometimes shortcuts do get you there faster"}

def other_foo
	puts yield
	puts method(:other_foo)
	# yield isn't really a method even though it looks like one
	# turns out, it's a keyword
	# puts method(:yield)
end

other_foo { "I expect to be heard." }

def another_foo
	yield if block_given?
end

another_foo

# Faster, Faster!
# using yield speeds up your code