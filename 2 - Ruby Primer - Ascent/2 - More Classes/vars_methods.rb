# Class Variables and Methods
class Item
	def initialize(item_name)
		@item_name = item_name
	end

	def show
		puts "Instance method show invoked for '#{self}'"
	end

	def to_s
		"Item: #{@item_name}"
	end

	def self.show
		puts "Class method show invoked"
	end
end

Item.new("silence").show
Item.show

puts
# There is also another way to define class methods that you may come across in Ruby code
class Item2
	class << self
		def show
			puts "Class method show invoked #{self}"
		end
	end
end

Item2.show

puts
# Using class variables to store application configuration
# instance variable always has an @ symbole prefixed before its name
# class variable are prefixed with @@

class Planet
	@@planets_count = 0

	def initialize(name)
		@name = name
		@@planets_count += 1
	end

	def self.planets_count
		@@planets_count
	end
end

Planet.new('earth'); Planet.new("uranus")
p Planet.planets_count

puts
#
class ApplicationConfiguration
	@@configuration = {}
	def self.set(property_name, value)
		@@configuration[property_name] = value
	end

	def self.get(property_name)
		@@configuration[property_name]
	end
end

ApplicationConfiguration.set("name", "Demo Application")
ApplicationConfiguration.set("version", "0.1")

p ApplicationConfiguration.get("version")

puts
# Class variables and inheritance
class ERPApplicationConfiguration < ApplicationConfiguration
end

class WebApplicationConfiguration < ApplicationConfiguration
end

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")

p ApplicationConfiguration.get("name")

puts
# Class instance variable
class Foo
	@foo_count = 0

	def self.increment_counter
		@foo_count += 1
	end

	def self.current_count
		@foo_count
	end
end

class Bar < Foo
	@foo_count = 100
end

Foo.increment_counter
Bar.increment_counter
p Foo.current_count
p Bar.current_count

puts
#
class ApplicationConfiguration
	@configuration = {}
	def self.set(property_name, value)
		@configuration[property_name] = value
	end

	def self.get(property_name)
		@configuration[property_name]
	end
end

class ERPApplicationConfiguration < ApplicationConfiguration
	@configuration = {}
end

class WebApplicationConfiguration < ApplicationConfiguration
	@configuration = {}
end

ApplicationConfiguration.set("name", "Demo Application")
ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")

p ApplicationConfiguration.get("name")


