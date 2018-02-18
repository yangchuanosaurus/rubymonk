# Variables

# Scope
def scope_the_scope
	on_the_inside = "oh. hi, friends."
	puts "from the inside: #{defined?(on_the_inside).inspect}"
end

#scope_the_scope
puts "from the outside: #{defined?(on_the_inside).inspect}"

# If you remove the call to scope_the_scope in the above example, Ruby still reads the puts line... but it doesn't execute. Why?

puts
class Shoe
	def initialize(toes = 1)
		@toes = toes
	end

	puts "inside the class: #{defined?(@toes).inspect}"

	def i_can_has_toes
		puts "inside the instance: #{defined?(@toes).inspect}"
	end
end

class Foot
	def initialize(toes = 5)
		@toes = toes
	end

	puts "inside the class: #{defined?(@toes).inspect}"

	def i_can_has_toes
		puts "inside the instance: #{defined?(@toes).inspect}"
	end
end

samurai_boot = Shoe.new(2)
samurai_boot.i_can_has_toes

left = Foot.new
left.i_can_has_toes

puts "in the `main` class: #{defined?(@toes).inspect}"

# As you can see, defined? doesn't just report whether the variable is defined but also how it is scoped.

puts
# Globals
module Somewhere
	class Hidden
		$everywhere = "global love"
	end
end

module Somewhere
	class CloseTo
		def the_heart
			$everywhere
		end
	end
end

puts Somewhere::CloseTo.new.the_heart

# Ruby does have some predefined globals which you may make use of from time to time. 
# $* (the command-line arguments used to execute this Ruby program), 
# $@ (the location of the last error), 
# $~ (the last regular expression match), 
# and $0 (the name of the current ruby script). 
puts
puts $0


