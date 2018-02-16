# Instance Variables and Accessors

# Getter and Setter methods
class Item
	def initialize(item_name, quantity)
		@item_name = item_name
		@quantity = quantity
	end

	def item_name
		@item_name
	end

	def quantity=(new_quantity)
		@quantity = new_quantity
	end

	def quantity
		@quantity
	end
end

item = Item.new("tv", 1)
puts item.item_name
puts item.quantity
item.quantity = 3
puts item.quantity

puts
# Making life easy through attr_accessors
class Item2
	attr_reader :item_name
	attr_writer :item_name

	def initialize(item_name)
		@item_name = item_name
	end
end

item = Item2.new("akakakak")
p item.item_name
item.item_name = 'bkbkbkbk'
p item.item_name

# attr_accessor, which will define both the getter and setter

# Mark
# Talk about object oriented programming and how getters and setters can be bad for your code
# https://www.javaworld.com/article/2073723/core-java/why-getter-and-setter-methods-are-evil.html