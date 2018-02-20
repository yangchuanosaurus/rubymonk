# Singleton methods and metaclasses

# An important characteristic of an object is that you can send messages to it and the object can respond to them.

class Foo
  def shout
    puts "I'm Foo"
  end
end

foo=Foo.new
foo.shout

class Foo
	def shout
	  puts "I'm still Foo, but I have been overridden"
	end
end
foo.shout

# Singleton methods

foo=Foo.new
def foo.shout
  puts "Foo Foo Foo!"
end
foo.shout
p foo.respond_to?(:shout)

standar_foo = Foo.new
standar_foo.shout
p standar_foo.respond_to?(:shout)

# The respond_to? method tells us whether the object can respond to the given message.

# When you declare a singleton method on an object, 
# Ruby automatically creates a class to hold just that method. 
# This class is called the 'metaclass' of the object.

# It is possible to access the metaclass of an object through a neat trick
class Object
	def metaclass
		class << self
			self
		end
	end
end
foo = "I'm a string object"
def foo.shout
  puts self.upcase
end

foo.shout
p foo.metaclass.class

p foo.class.instance_methods.include? :shout
p foo.metaclass.instance_methods.include? :shout

# A metaclass is almost a class in many respects. It however can't be instantiated:
# can't create instance of singleton class

# Ruby 1.9 introduced the singleton_class as 
# a shorthand for the class << self syntax we saw earlier. 
# From now on, you can just call the singleton_class instead of our custom metaclass method.
class Object
	def singleton_method?(method)
		(self.singleton_class.instance_methods - self.class.instance_methods).include?(method)
	end
end
foo = "A String"
def foo.shout
	puts foo.upcase
end
p foo.singleton_method?(:shout)

# In Ruby, both 'metaclass' and 'singleton class' means the same. 
# You'll find them being used interchangeably in Ruby literature.

