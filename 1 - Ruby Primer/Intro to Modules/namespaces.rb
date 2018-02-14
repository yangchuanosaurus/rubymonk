# Modules as Namespaces
module Perimeter
	class Array
		def initialize
			@size = 400
		end
	end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

p our_array
p our_array.class
p ruby_array
p ruby_array.class

module Dojo
	A = 4
	module Kata
		B = 8
		module Roulette
			class ScopeIn
				def push
					15
				end
			end
		end
	end
end

A = 16
B = 23
C = 42

puts "A - #{A}"
puts "Dojo::A - #{Dojo::A}"
puts
puts "B - #{B}"
puts "Dojo::Kata::B - #{Dojo::Kata::B}"
puts
puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"

module RubyMonk
	module Parser
		class TextParser
			def self.parse(str)
				str.upcase.split("")
			end
		end
	end
end

puts RubyMonk::Parser::TextParser.parse("Hello world")
