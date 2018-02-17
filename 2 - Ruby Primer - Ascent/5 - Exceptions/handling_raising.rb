# Handling and Raising
def extract_first_name(name)
	return "NoName" if name.nil?
	first = name.split(" ").first
	puts "extracted first name #{first}"
	first
end

def casual_names(names)
	casual = names.map { |name| extract_first_name(name) }
	puts "captured casual names #{casual}"
	casual
end

puts casual_names(["Yehuda Katz", nil, "Why the lucky stiff"])
puts "I bet you'll never see this."

# begin, rescure, end
def start_summer
	raise Exception.new("overheated!")
end

begin
	start_summer
rescue Exception => e
	puts "Tell you about heat! #{e.inspect}"
ensure
	puts "Finally do something"
end

# start_summer rescue "it's okay, error."

puts
# ensure

# raise
# To raise exceptions we use raise or Kernel.raise or Kernel.fail. 
# raise without any arguments simply raises a RuntimeError exception with the string message that we've specified. 

# raise StandardError, "Raising standard error"

# practice
def string_slice(*args)
  raise ArgumentError if args.size > 5
  ary = args.map { |s| raise IndexError if s.length < 3; s.slice(0, 3) }
  ary
end

p string_slice("abcdeg", "defffds")
p string_slice("abcdeg", "defffds", 'dd') rescue puts "dd is less than 3"
p string_slice("abcdeg", "defffds", "defffds", "defffds", "defffds", "defffds") rescue puts "args length more than 5"