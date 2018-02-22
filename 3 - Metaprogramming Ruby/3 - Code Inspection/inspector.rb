# Inspector Gadget

def monk(arg1, *args2)
	"Monks " + arg1 + args2.first
end

# method() returns the Method object.
mo = self.method(:monk)

puts "Arity"
puts mo.arity

puts "Parameters"
p mo.parameters

# The arity method in the above example returns a Fixnum 
# representing the number of arguments that the method can accept. 
# It returns -2 because arity returns -(n + 1), for n number of required arguments. 
# That is, -(1 + 1) = -2 as *args2 is optional. 
# It adds a + 1 because -1 is a reserved number for functions defined using Ruby's C API. 
# If there are no optional arguments then it just returns the correct positive value. 

class Monastery
	def monks(arg1, arg2)
		"Monks " + arg1 + arg2
	end
end

mo = Monastery.new.method(:monks)
puts "Receiver --"
p mo.receiver # #<Monastery:0x007ffe4682d6c8>

puts

puts "Owner --"
p mo.owner # Monastery
# receiver is the object on which the method is bound and owner is the class that object belongs to. 

# Analysis
# The methods method on Object allows us to tap into to the list of public methods available on an Object and its ancestors. 
# This is equivalent to using public_methods. 
p mo.methods
p mo.public_methods

p mo.public_methods(false)