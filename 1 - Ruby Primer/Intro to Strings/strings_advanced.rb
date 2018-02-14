# Advanced String operations

# Splitting Strings
# puts 'Fear is the path to the dark side'.split(' ')

# Concatenating Strings
puts 'Ruby' + 'Monk'
puts 'Ruby' << 'Monk'
# In the first case of using '+', the original string is not modified, 
# as a third string 'RubyMonk' is created. 
# This can make a huge difference in your memory utilization, 
# if you are doing really large scale string manipulations

# Replacing a substring
puts "I should look into your problem when I get time".sub('I', 'We')
# THe method above only replaced the first occurrence of the term we were looking for.
# In order to replace all occurrences we can use a method called 'gsub' which has a global scope.
puts "I should look into your problem when I get time".gsub('I', 'We')

# Regular Expression
puts 'RubyMonk'.gsub(/[aeiou]/, '1')

puts 'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/, '0')

# Find a substring using RegEx
puts 'RubyMonk Is Pretty Brilliant'.match(/ ./)
puts 'RubyMonk Is Pretty Brilliant'.match(/ ./, 9)