# Constants
module Argument
	Truth = "YES"
end
#Argument::Truth = "Yes, I am."

def rewrite_history
	#Argument::Truth = "NO, you're not."
end

rewrite_history

# Note that one not need attempt to redefine a constant to get this error.
# Even if you delete the first line in the above example, it will fail with the same error.
# Ruby does not want you to assign (or re-assgin) constants while your program is running

# Classes and modules: less special than they look
puts
fence = Module.new do
	def speak
		"I'm trapped!"
	end
end

class Sheep
	def speak
		"Baaaaahhhh."
	end
end

dolly = Sheep.new
dolly.extend(fence)
puts dolly.speak

def awkward_sheep
	sheep = nil # create a class here with a method 'speak'
  sheep = Class.new do
    def speak
      'Bah.'
    end
  end
  sheep.speak
end


module Fence
	# create your class here  
  Sheep = Class.new do
    def speak
      'Bah.'
    end
  end
end

def call_sheep
  # create a new sheep and make it talk!
  sheep = Fence::Sheep.new
  sheep.speak
end

puts call_sheep