# Iterate, Filtrate and Transform

[4, 8, 15, 16, 23, 42].each_with_index { |e, i| puts "#{i} -- #{e}" }

{:locke => "4", :hugo => "8"}.each_with_index do |kv, i|
	puts "#{i} -- #{kv}"
end

# each is used for simple iteration
# map for transformation.
def map_value
	[3, 7, 14, 15, 22, 41].map { |e| e + 1 }
end

p map_value

# map returns the resultant array
# each returns the original array

def hash_keys(hash)
	hash.map { |k, v| k }
end

puts hash_keys({:locke => "4", :hugo => "8"})

# inject is a powerful enumerator that can do iteration 
# (walking over all items in a collection), accumulation and transformation all at once. 
sum = [4, 8, 15, 16, 23, 42].inject do |accumulator, iterated|
  accumulator += iterated
  accumulator
end

p sum

# The 0 argument to the inject(0) method is an optional default value. 
# This optional default value is assigned to the first argument accumulator in the block.
# If there is no value, then accumulator starts with the first value of the array. This is done only once on the first iteration. 
# inject is also an iterator, the second argument iterated being the element it's currently on.
# accumulator here, is basically incrementing itself by adding the value of iterate to itself. 

def custom_inject(array, default = nil)
  accumulator = default || array[0]
  
  array.each do |element|
    accumulator = accumulator + element
  end
  
  accumulator
end

p custom_inject([4, 8, 15, 16, 23, 42], 0)

puts
t = [4, 8, 15, 16, 23, 42].inject({}) { |a, i| a.update(i => i) }
puts t

def occurrences(str)
  ary = str.split(' ')
  ary.inject({}) { |h, word| h.update(word => str.scan(word).size) }
end

def occurrences2(str)
	str.scan(/\w+/).reduce(Hash.new(0)) do |build, word| 
  	build[word.downcase] +=1
  	build
	end
end

t = occurrences2("word is a new word")
p t

# The inject method is also aliased to reduce

# all?, any? and none? are some useful querying enumerators that always return true or false 
puts [4, 8, 15, 16, 23, "42"].any? { |e| e.class == String }

any = {:locke => 4, :hugo => 8}.any? { |candidate| candidate[1] > 4 }
puts any

any = {:locke => 4, :hugo => 8}.any? { |candidate, number| number == 8 }
puts any


class Island
  def initialize(candidates)
    @candidates = candidates
  end
  
  def survive?
    @candidates.none? { |candidate| candidate == "Esau" }
  end
  
  def safe?
    @candidates.all? { |candidate| candidate == "Jack" }
  end
end

# The | (pipe character) is the Union operator. It joins two arrays and returns the result with duplicates removed. 
union_example = ["a", "b", "a"] | ["c", "c"]
p union_example # [a, b, c]

# The & operator is the Intersection operator.
intersection_example = ["a", "b", "a"] & ["c", "b", "d", "e"]
p intersection_example # ["b"]

array_difference = [1,2,3, 1,2,3] - [1]
p array_difference # [2, 3, 2, 3]
