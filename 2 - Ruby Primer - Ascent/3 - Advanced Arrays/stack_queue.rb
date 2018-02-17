# Stacks and Queues
# Stack is a last-in-first-out data structure
# push should always return self. pop should always return the value of the popped element. 

class Stack
	def initialize
		@store = Array.new
	end

	def pop
		@store.pop
	end

	def push(element)
		@store.push(element)
		self
	end

	def size
		@store.size
	end
end

# Queue is a first-in-first-out data structure in which the two major operations are enqueue and dequeue.

class Queue
	def initialize
		@store = Array.new
	end

	def dequeue
		@store.pop
	end

	def enqueue(element)
		@store.unshift(element)
		self
	end

	def size
		@store.size
	end
end