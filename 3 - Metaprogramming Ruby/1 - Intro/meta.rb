# Being Meta
# Metaprogramming is the act of writing code that operates on code rather than on data.
# This involves inspecting and modifying a program as it runs using constructs exposed by the langauge.

class Array
	def foldl(method)
		inject { |result, i| result ? result.send(method, i) : i }
	end
end

puts [1000.0, 200.0, 50.0].foldl("/")
puts [1, 2, 3].foldl('+')

# Open to change
class SetInStone
	def everything_changes
		return "Wait, what? You just added a method to me!"
	end
end

puts SetInStone.new.everything_changes

# Learning when metaprogramming is the right tool for the job 
# will be of considerable value to you in creating powerful yet maintainable codebases.