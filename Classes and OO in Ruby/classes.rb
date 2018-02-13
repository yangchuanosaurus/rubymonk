# Classes
# Grouping Objects
puts 1.class
puts "".class
puts [].class

puts 1.is_a?(Integer)
puts 1.is_a?(String)

# Classes are people too
# In Ruby, classes themselves are siply objects that belongs to the class Class.
puts 1.class.class

# What do classes do?
puts Object.new