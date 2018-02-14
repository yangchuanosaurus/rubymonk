# Getting Modular
# Modules only hold behaviour, unlike classes, which hold both behaviour and state

module WarmUp
	def push_ups
		"Phew, I need a break!"
	end
end

class Gym
	include WarmUp

	def preacher_curls
		"I'm building my biceps."
	end
end

class Dojo
	include WarmUp

	def tai_kyo_kyu
		"Look at my stance!"
	end
end

puts Gym.new.push_ups
puts Dojo.new.push_ups

# All modules in Ruby are instances of Module
puts WarmUp.class # Module
# Interestingly, Module is the superclass of Class
puts Class.superclass # Module