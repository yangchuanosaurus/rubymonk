# Equality of Objects

puts [1, 2] == [1,2]

puts "a" == 'a'
puts 'a' == 'xyz'

class Item
	attr_reader :item_name, :qty
	def initialize(item_name, qty)
		@item_name = item_name
		@qty = qty
	end

	def ==(other_item)
		item_name == other_item.item_name && qty == other_item.qty
	end

	def hash
		self.item_name.hash ^ self.qty.hash
	end

	def eql?(other_item)
		@item_name == other_item.item_name && @qty == other_item.qty
	end
end

# this line should invoke the `==` method defined in the Item class
p Item.new('abcd', 1) == Item.new("abcd", 1)
p Item.new('abcd', 1).eql?(Item.new("abcd", 1))

# Object equality, the eql? method and hash codes
items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
p items.uniq

p 1.hash
p 1.hash

# Instead of comparing two objects using ==, which could be expensive when the objects are large
# Ruby uses the hash of the object when possible.
# faster than comparing the various instance variables of the underlying object
# The Array#uniq method, uses the result of hash to compare objects and identify duplicates.

puts
# Wrapping up Object Equality in Ruby
class Item
  attr_reader :item_name, :quantity, :supplier_name, :price
  def initialize(item_name, quantity, supplier_name, price)
    @item_name = item_name
    @quantity = quantity
    @supplier_name = supplier_name
    @price = price
  end 
  
  # implement ==, eql? and hash
  def ==(other_item)
    @item_name == other_item.item_name &&
    @quantity == other_item.quantity &&
    @supplier_name == other_item.supplier_name &&
    @price == other_item.price
  end
  
  def hash
    @item_name.hash ^ @quantity.hash ^ @supplier_name.hash ^ @price.hash
  end
  
  def eql?(other_item)
    @item_name == other_item.item_name &&
    @quantity == other_item.quantity &&
    @supplier_name == other_item.supplier_name &&
    @price == other_item.price
  end
end

p Item.new('abcd', 1, 'supplier', 1.0) == Item.new("abcd", 1, 'supplier', 1.0)
p Item.new('abcd', 1, 'supplier', 1.0).eql?(Item.new("abcd", 1, 'supplier', 1.0))
items = [Item.new("abcd", 1, 'supplier', 1.0), Item.new("abcd", 1, 'supplier', 1.0), Item.new("abcd", 1, 'supplier', 1.0)]
p items.uniq
