# Serializing
# puts "a=1:b=2".split(":")[0].strip

require 'yaml'

class CerealBox
	attr_accessor :ounces, :contains_toy

	def initialize(ounces, contains_toy)
		@ounces = ounces
		@contains_toy = contains_toy
	end

	def self.from_s(s)
		ounces = 0
		contains_toy = false
		s.each_line do |field|
			value = field.split(":")[1].strip
			ounces = value.to_i if field.include?("ounces")
			contains_toy = to_boolean(value) if field.include?("contains_toy")
		end
		CerealBox.new(ounces, contains_toy)
	end

	def self.to_boolean(str)
		str == 'true'
	end

	def to_s
		"@ounces : #{@ounces}\n@contains_toy : #{@contains_toy}"
	end
end

puts "example to_s: #{CerealBox.new(4, true).to_s}"
puts "example from_s: #{CerealBox.from_s(CerealBox.new(4, true).to_s)}"

# While that strategy does work, it's quite cumbersome.
# The from_s method is big, ugly, and fragile.

puts
# Dumping and loading
class Ogre
	def initialize(strength, speed)
		@strength = strength
		@speed = speed
	end

	def self.deserialize(yaml_string)
		YAML::load(yaml_string)
	end

	def serialize
		YAML::dump(self)
	end

	def to_s
		"Ogre: [strength = #{@strength}, speed = #{@speed}]"
	end
end

wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"
puts "...and it's easy to change back: #{Ogre.deserialize(yaml)}"
puts

shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object, #{ogres}"

# practice
class CerealBox2
	attr_accessor :ounces, :contains_toy

	def initialize(ounces, contains_toy)
		@ounces = ounces
		@contains_toy = contains_toy
	end

	def self.deserialize(yaml_string)
		YAML::load(yaml_string)
	end

	def serialize
		YAML::dump(self)
	end

	def to_s
		"@ounces = #{@ounces}, @contains_toy = #{@contains_toy}"
	end
end

yaml = CerealBox2.new(4, true).serialize
puts "practice serialize: #{yaml}"
puts "practice deserialize: #{CerealBox2.deserialize(yaml)}"



