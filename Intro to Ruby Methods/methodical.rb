# A method, then, is simply programming jargon for 
# something one object can do for another
puts 1.next.next

# All objects in Ruby expose the eponymous method method 
# that can be used to get hold of any of its methods as an object
puts 1.method("next").call

next_method_object = 1.method("next")
puts next_method_object.call

def reverse_sign(an_integer)
	0 - an_integer
end

puts reverse_sign(100)
puts reverse_sign(-5)

def do_nothing
	return
	'I am a string'
end
puts do_nothing.class