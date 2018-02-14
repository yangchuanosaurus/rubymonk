# Iterating over a Hash
student_ages = {
	"Jack" => 10, 
	"Jill" => 12, 
	"Bob" => 14
}

student_ages.each do |name, age|
	puts "#{name}'s age is #{age}"
	age = age + 1 # No effects
end

puts student_ages

# Ideally, any transformation of a collection should produce 
# a new collection with the original unchanged making the code easier to understand and manage

student_ages.each do |name, age|
	student_ages[name] = age + 1 # effects on hashes
end

puts student_ages

# Extracting the keys and values from a Hash
puts student_ages.keys

# Newer, faster
puts student_ages["Albert"].nil?

normal = Hash.new
p normal
was_not_there = normal[:zig]
puts "wasn't there:"
p was_not_there

# Returns a new, empty hash.
# the value retuened depends on the style of new used to create the hash
# if obj 'brown' is specified, this single object will be used for all default values.
usually_brown = Hash.new("brown")
p usually_brown
pretending_to_be_there = usually_brown[:zig]
puts "Pretending to be there"
p pretending_to_be_there
puts usually_brown

# While this creates a new default object each time
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
p h["c"]
p h["C"]
p h.keys

chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
p chuck_norris

def artax
	a = [:punch, 0]
	b = [:kick, 72]
	c = [:stops_bullets_with_hands, false]
	key_value_pairs = [a, b, c]
	Hash[key_value_pairs]
end

p artax