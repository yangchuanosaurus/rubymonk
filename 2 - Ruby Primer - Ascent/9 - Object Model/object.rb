# What is an object? Everything in Ruby is an object.

# Blocks, lambdas, methods, Class - all of the them are objects. Every expression in Ruby evaluates to an object. 

# Object Identity
class Foo
end

p "a".object_id
p "a".object_id
p Foo.new.object_id
p Foo.object_id

# Let us now look at a different aspect of an object's identity: its origin.
p "a".class
p 1.class
p Foo.new.class

p Foo.class

# practice
class Dish
end

class Soup < Dish
end
class IceCream < Dish
end
class ChineseGreenBeans < Dish
end

class DeliveryTray
  DISH_BOWL_MAPPING = { 
    Soup => "soup bowl",
    IceCream => "ice cream bowl",
    ChineseGreenBeans => "serving plate"
  }
  
  def initialize
    @dishes = Hash.new
  end
  
  def add(dish)
    if @dishes.key?(dish.class)
      @dishes[dish.class] += 1
    else
      @dishes[dish.class] = 1
    end
  end
  
	def dishes_needed
    dish_descs = @dishes.map do |klass, count|
      "#{count} #{DISH_BOWL_MAPPING[klass]}"
    end
    dish_descs.join(", ")
  end
end  

d = DeliveryTray.new
d.add Soup.new; d.add Soup.new
d.add IceCream.new

puts d.dishes_needed # should be "2 soup bowl, 1 ice cream bowl"

# You can check whether an object, say x is an instance of 
# a particular class A by comparing x.class == A. 
# The instance_of? method is a standard Ruby method that is a shorthand for this: 
class A
end

class B < A
end

p A.new.instance_of?(A) # true
p B.new.instance_of?(A) # false

