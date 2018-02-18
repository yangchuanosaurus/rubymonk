# Building Collections (the Array and the Hash)

# ????
class FibonacciNumbers
    NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    
    def each
			NUMBERS.each {|number| yield number }
    end
end

f=FibonacciNumbers.new
f.each do |fibonacci_number|
  puts "A Fibonacci number multiplied by 10: #{fibonacci_number*10}"
end