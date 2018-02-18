# Listerals
puts [:i, :am, :a, :literal, :array].inspect

def big_q_string(numerator, denominator)
	%Q[This %Q syntax is the ugliest one.
#{numerator} out of #{denominator} "dentists" agree.]
end

p big_q_string(2, 5)

puts
def repetitive_array_of_strings
  ["Wow,", "this", "is", "a", "pretty", "long", "list", "of", "words", "and", "it", "took", "me", "a", "long", "time", "to", "type", "because", "of", "all", "those", "darn", "quote", "characters.", "Geez."]
end

def array_of_words_literal
  %w[With this double-u shorthand it wasn't very hard at all to type out this list of words. Heck, I was even able to use double-quotes like "these"!]
end

p array_of_words_literal

puts
ranger_smith = 55..75
puts "ranger smith: #{ranger_smith}"

start = 101
finish = 201
ranger_rick = start..finish
puts "ranger rick: #{ranger_rick}"

smith_points = ranger_smith.map {|n| n.to_s}
puts "all together now! #{smith_points.join(", ")}"

def one_less
	range = 1..9
  range.map { |i| i.to_s }
end

puts one_less

puts
def range_of_characters
	range = 'a'..'z'
	range.map { |c| c }
end

puts range_of_characters