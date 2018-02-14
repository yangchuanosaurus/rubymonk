puts lambda {}
puts Proc.new {}

def a_method
	lambda { "we just returned from the block" }.call
	return "we just returned from the calling method"
end

# prints = lambda { return "we just returned from the block" }
# puts "lambda call with return: " + prints.call
puts a_method

#puts Proc.new { return "we just returned from the block" }

def a_method
 Proc.new { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end


puts a_method

# The -> literal form is a shorter version of Kernel#lambda.
short = ->(a, b) { a + b }
puts short.call(2, 3)

# Kernel#proc factory method is identical to Proc.new
short = proc { |a, b| a + b }
puts short.call(2, 4)

def a_method
	proc { return "we just returned from the block" }.call
end
puts a_method