# Tap in Deeper

A_CONSTANT = 42
p Module.const_get('A_CONSTANT')

class This
end

class That
end

p Module.const_get('This').new
p Module.const_get('That').new

monk = Class.new
monk.class_eval do 
  def zen
    42
  end
end

# const_get is defined on Module, but it works for classes as well, as Class is a subclass of Module.
# It returns a NameError if the value of that constant isn't found.
# This is the only way you can access nested constants, as const_get only parses 
# properly formed named constants and does not parse colons like Monk::Zen

class Monk; ZEN = 42; end
p Monk.const_get('ZEN')

ZEN = 43
class Monk2; end

# If it doesn't find the constant in that scope it goes up the ancestral chain and starts looking from Object. 
p Monk2.const_get('ZEN') # 43 from ZEN defined in ancestral chian

# Get instance variables
class Monk3
	def initialize
		@zen = 44
	end
end

p Monk3.new.instance_variable_get("@zen")

def inspect_instance_variable(class_name, variable)
  Module.const_get(class_name).new.instance_variable_get(variable)
end

p inspect_instance_variable('Monk3', "@zen")