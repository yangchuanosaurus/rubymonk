def factorial(f)
	sum = 1
	f.times do |i|
		sum *= (i + 1)
	end
	sum
end

# arrange number of pick m from n
def c(n, m) # m should <= n
	return 1 if m == 1
	factorial(n) / factorial(n - m)
end

def number_shuffle(number)
	number_str = number.to_s
	number_len = number_str.length

	a = number_str.split('')

	arrage_numbers = c(number_len, number_len)
	
	shuffle = []

	shuffle << a.shuffle.join('').to_i while shuffle.uniq.size != arrage_numbers

	shuffle.uniq.sort
end

puts number_shuffle("46587")
