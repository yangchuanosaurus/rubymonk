# The Debugging Primaries

def describe(user_info = nil)
	user_info = ['Greg Lief', 42] if user_info.nil? || !user_info.is_a?(Array)
	p "My name is #{user_info[0]} and I'm #{user_info[1]} years old."
end

describe(["AName", 23])
describe