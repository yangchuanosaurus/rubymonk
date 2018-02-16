# Displaying Objects; puts and p, to_s and inspect
# puts and p
# The difference between these methods are better explained through an example:
# class Item
# 	def inspect
# 		"Result of inspect"
# 	end
# end

# puts Item.new
# puts Item.new.to_s
# p Item.new
# puts generally prints the result of applying `to_s` on an object while p prints the result of `inspect` in the object

# inspect vs to_s
class Item
	def initialize(item_name, qty)
		@item_name = item_name
		@qty = qty
	end

	def to_s
    "#{@item_name}, #{@qty}"
  end
end

item = Item.new("a", 1)
puts item
p item