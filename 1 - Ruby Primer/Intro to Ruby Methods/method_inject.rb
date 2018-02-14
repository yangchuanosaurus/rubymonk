# Ruby's inject method
# used to build or reduce arrays and hashes.

a = [:uno, :dos, :tres]
b = ['one', 'two', 'three']
# {:uno => 'one', :dos => 'two', :tres => 'three'}

hash_inject_a_b = a.inject({}) do |memo, numero|
	memo[numero] = b[a.index(numero)]
	memo
end
puts hash_inject_a_b

# The inject method is passed an empty hash as a starting point 
# and the memo keeps track of the hash as it is updated every iteration.
puts [1, 2, 3, 4, 5, 6].inject([]) { |memo, num| memo << num.to_s if num % 2 == 0; memo }

puts [1, 2, 3, 4, 5, 6].select { |num| num if num % 2 == 0 }.map(&:to_s)