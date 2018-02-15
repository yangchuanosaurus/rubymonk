# Classification

puts "A String".is_a?(String)
puts 1.is_a?(String)

# Object#is_a? has an alias, Object#kind_of?

puts
def know_it_all(object)
	#puts object.class
	object.class
end

puts 1.is_a?(know_it_all(1))
puts 'a string'.is_a?(know_it_all("a string"))
puts
puts [].is_a?(know_it_all([]))
puts {}.is_a?(know_it_all({}))