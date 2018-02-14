def kaprekar?(k)
	false if k < 1
	true if k == 1
	results = k ** 2
	results_str = results.to_s
	results_len = results_str.length
	false if results_len == 1
	right_digits = k.to_s.length
	first_range = results_len - right_digits
	results_str[0, first_range].to_i + results_str[first_range, results_len].to_i == k
end

def check_kaprekar(number)
	if kaprekar?(number)
		puts "#{number} is a kaprekar number"
	else
		puts "#{number} is not a kaprekar number"
	end
end

check_kaprekar(-1)
check_kaprekar(1)

number = 9
check_kaprekar(number)

number = 90
check_kaprekar(number)

number = 55
check_kaprekar(number)

number = 297
check_kaprekar(number)

number = 703
check_kaprekar(number)