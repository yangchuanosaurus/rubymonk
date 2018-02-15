# Understanding Inheritance

# the object 1.0 is both a Float and a Numeric
# Float is a sub-class of Numeric
puts 1.0.is_a?(Float)
puts 1.0.is_a?(Numeric)
puts 1.0.class # Float
puts 1.0.class.superclass # Numeric
puts Float.superclass # Numeric

puts
# Meet the superclass
# The Class#superclass tells you which class any given class was inherited from
# Note that it's an instance method on Class and not on Object
puts Float.superclass
puts Numeric.superclass
puts Object.superclass # BasicObject
puts BasicObject.superclass # nil, empty class with no superclass

puts
# How many methods are uniquely 1.0's and how many are inherited by it from its ancestors.
puts Float.instance_methods.count
puts (Float.instance_methods - Object.instance_methods).count
puts Float.instance_methods.count - Object.instance_methods.count

puts (
	Float.instance_methods -
	Object.instance_methods -
	Numeric.instance_methods).count

puts
# practice
def is_ancestor?(klass, subclass)
	current_class = subclass
	while !current_class.superclass.nil? && current_class != klass
		current_class = current_class.superclass
	end
	current_class == klass
end

puts is_ancestor?(BasicObject, Float)
puts is_ancestor?(Object, Float)
puts is_ancestor?(Float, Float)
