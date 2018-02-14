# Infinite Loops

loop do
	puts "This line will be executed for an infinite amount of time."
	# We set a break to quit the infinite loop
	unless false
		break
	end

end

# Run a block of code N times
5.times do |i|
	puts "Counter the times #{i}"
end