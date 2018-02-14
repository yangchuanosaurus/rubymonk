# As an observant initiate, you've probably noticed that in the last lesson
# Integer objects list mathematical operators like + and - among their methods.
puts 4.+(3)

# Ruby makes an exception in its syntactic rules for commonly used operators 
# so you don't have to use periods to invoke them on objects
puts 4 + 3 # this is same as 4.+(3)

words = ['foo', 'bar', 'baz']
puts words[1]
puts words.[](1)

# This is a common pattern in Ruby
# two different ways to do the same thing where one remains 
# consistent and the other changes the syntax to be more programmer friendly