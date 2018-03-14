class HelloWorld

	def say_hello
		"Hello World!"
	end

end

# Example Group
describe HelloWorld do

	it "should show how the equality Matchers work" do
		a = "test string"
		b = a

		expect(a).to eq "test string"
		expect(a).to eql "test string"
		expect(a).to be b
		expect(a).to equal b
	end

	context "When testing the HelloWorld class" do
		# Example
		it "should say 'Hello World!' when call the say_hello method" do
			hw = HelloWorld.new
			message = hw.say_hello
			expect(message).to eql "Hello World!"
		end

	end
	
end

describe "An example of the comparison Matchers" do

	it "should show how the comparison Matchers work" do
		a = 1
		b = 2
		c = 3
		d = 'test string'

		expect(b).to be > a
		expect(a).to be >= a
		expect(a).to be < b
		expect(b).to be <= b
		expect(c).to be_between(1, 3).inclusive
		expect(b).to be_between(1, 3).exclusive
		expect(d).to match /TEST/i
	end
end

# The word describe is an RSpec keyword.
# You can think of an "Example Group" as a collection of tests.

# eq ==
# eql .eql?
# be .equal?
# equal .equal?