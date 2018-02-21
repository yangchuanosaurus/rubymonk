# Just what does #send do?
# Dynamic method calls

class Glider
	private
	def lift(argument=nil)
		puts "Rising"
	end

	def bank(argument=nil)
		puts "Turning"
	end
end

class Nomad
	def initialize(glider)
		@glider = glider
	end

	def do(action, argument=nil)
		# if action == 'lift'
		# 	@glider.lift
		# elsif action == 'bank'
		# 	@glider.bank
		# else
		# 	raise NoMethodError.new(action)
		# end
		@glider.send(action, argument)
	end
end

nomad = Nomad.new(Glider.new)
nomad.do('lift')
nomad.do("bank")

# Being Sneaky: Calling private methods

# Relay Messages
def relay(array, data_type)
  # Write your code here
  array.map { |d| d.send("to_#{data_type}")}
end

relay([1, 2, 3, 4], 's').each { |s| p s }