# The `included` Callback and the `extend` Method

# The `included` Callback

module Foo
	def self.included(klass)
		puts "Foo has been included in class #{klass}"
	end
end

class Bar
	include Foo
end

puts
# Welcome to Module#extend
# However, include has a limitation: it can only add instance level methods - not class level methods.
module Foo
  def module_method
    puts "Module Method invoked"
  end
end

class Bar
end

bar = Bar.new
bar.extend Foo
bar.module_method

class Bar
  def initialize
    self.extend Foo
  end
end

bar = Bar.new
bar.module_method

puts
# Using `extend` for adding class level methods
module Foo
  def say_hi
    puts "Hi!"
  end
end

class Bar
end

Bar.extend Foo
Bar.say_hi

puts
# Practice
module Foo
  def self.included(base)
  	puts 'executed method included'
    base.extend ClassMethods
  end
  
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end
end

class Bar
  include Foo
end

puts Bar.guitar

