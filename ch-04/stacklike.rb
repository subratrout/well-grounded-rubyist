module Stacklike
	def stack
		@stack ||= []
	end

	def add_to_stack(object)
		stack.push(object)
	end

	def take_from_stack
		stack.pop
	end
end

# Modules give you a way to collect and encapsulate behaviors

# A stack is a data structure that operates on the last in, first out (LIFO) principle

# modules don’t have instances, so you can’t do a = Stacklike.new

# So you can create a class such as Stack and add module to it using require_relative