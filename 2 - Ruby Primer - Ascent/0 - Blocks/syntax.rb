addition = lambda { |a, b| a + b }
puts addition.call(1, 1)

addition = lambda do |a, b|
	a + b
end
puts addition.call(1, 2)

addition = lambda { |a, b| 
	a + b 
}
puts addition.call(1, 3)

addition = lambda do |a, b|; a + b; end
puts addition.call(1, 4)