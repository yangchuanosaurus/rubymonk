# Cloning and freezing objects
a = [1, 2, 3]
b = a
b << 4
p a
p b

b = a.clone
b << 5
p a
p b

foo = "foo"
foos = [foo]
foo = foo.upcase		# returns a new string object. foo remains unharmed.
p foos

bar = "bar"
bars = [bar]
bar.upcase!				  # this changes bar itself. the object mutates.
p bars

# Freezing objects
a = "test"
a.freeze # can't modify frozen String (RuntimeError)
# a << "change"
puts a

a = [1, 2, 3, 4]
a.freeze
a = [1, 2, 3]
p a

# You can use the frozen? method on an object to check whether an object is currently frozen or not.
