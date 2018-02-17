require 'Date'

# Wrapping up modules
module Foo
	def self.extended(base)
		puts "Class #{base} has been extended with module #{self}!"
	end
end

class Bar
	extend Foo
end

puts
module Weather
	def self.will_it_rain_on(date)
		"it depends"
	end
end

puts Weather.will_it_rain_on(Date.today)

puts
module Math
  def self.square(n)
    n ** 2
  end
end
puts Math.square(6) 