# Looking up methods
# Ruby objects are happy to tell you what methods they provide.
# You simply call the 'methods' method on them
puts methods

puts 'Try looking up methods of integer'
puts 1.methods.sort

# Invoking methods with arguments
# Here's an example of an argument to the method 'index', 
# which finds the position of  the argument in the array
puts ['rock', 'paper', 'scissors'].index('paper')

puts 2.between?(1, 3)
puts 2.between?(4, 5)