a = 1
b = 4
puts "The number #{a} is less than #{b}\n\n"

def string_length_interpolater(incoming_string)
	"The string you just gave me has a length of #{incoming_string.length}"
end

puts string_length_interpolater("Larning ruby")

# We've been using double quotes in all our string interpolation examples.
# A string literal created with single quotes does not support interpolation
puts 'The number #{a} is less than #{b}\n'
puts 'End.'

# Search in a String
puts "include?"
puts "[Luke:] I can't believe it. [Yoda:] That is why you fail.".include?('yoda')

puts "start_with?"
puts "Ruby is a beautiful language".start_with?('Ruby')

puts "end_with?"
puts "I can't work with any other langauge but Ruby".end_with?('Ruby')

# It is conventional in Ruby to have '?' at the end of the method if that method returns only boolean values.

puts "Know the index of a particular character of a sub-string in a give String"
puts "I am a Rubyist".index('R')

puts "String case change"
puts 'i am in lowercase'.upcase
puts 'i am IN lowercase'.upcase.downcase

# Ruby provides a way to swap the case of every character in it
puts 'i am IN lowercase'.swapcase