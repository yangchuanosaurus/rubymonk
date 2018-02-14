def cal_explicit(a, b, &block) # &block is an explicit parameter
	block.call(a, b)
end

def cal_implicit(a, b)
	yield(a, b) # yield calls an implicit block
end

puts cal_implicit(4, 5) { |a, b| a + b }

addition = lambda { |x, y| x + y }
puts cal_explicit(4, 5, &addition)

def filter(array, block)
	return array.select &block # Array#select method does exactly this but requires an implicit block
end

Filter = lambda do |array, &block|
	array.select(&block)
end

puts Filter.call([1, 2, 3, 4]) { |n| n.even? }