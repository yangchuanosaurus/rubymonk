# Tidying Things Up
begin
	eval "40 / 0"
rescue ZeroDivisionError => error
	p error
end

puts
def zen
	begin
		p eval "(40 + 2) / 2"
		p eval "(40 + 2) \ 2"
	rescue SyntaxError => error
		puts error.backtrace
	end
end

zen

puts
def zen?(object)
  if object.to_i == 42
    200
  else
    400
  end
end

if zen?(42) == 200
  puts "Master loves you as he loves Jacob."
end

# however, possible to create custom exceptions, other than the ones already defined by the Exception class. 

puts
# Propagation
def zen
  10.times do
    answer = 42 / 0
  end
end

begin
  puts "Calling zen."
  zen
rescue Exception => error
	puts error.backtrace
end

puts "End of main."

# Hierarchy and the Exception class
p StandardError.ancestors

# Therefore, to create a custom Exception, you can subclass the Exception class. More specifically, the StandardError class. 
# create a custom Exception
class SomeCustomError < StandardError
end

class InfinityError < StandardError
end

ie = InfinityError.new("infinity error was raised")

begin
  if 1.0 / 0.0
    raise ie
  end
rescue InfinityError => error
  p error.message
end

# practice
class KasayaError < StandardError
end

def robe(type)
	if type.downcase != 'kasaya'
  	raise KasayaError.new
	else
  	"Dharmaguptaka's Kasaya Robe"
	end
end

puts robe('kasaya')


