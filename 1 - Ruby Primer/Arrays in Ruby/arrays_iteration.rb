# Iteration
array = [1, 2, 3, 4, 5]
for i in array
	puts i
end

def array_copy(source)
	destination = []
	source.each do |i|
		destination << i
	end
	return destination
end

puts array_copy(array)