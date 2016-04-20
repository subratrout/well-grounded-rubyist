require_relative "stacklike"

class Stack
	include Stacklike
end

a = Stack.new

a.add_to_stack("item_one")
a.add_to_stack("item_two")
a.add_to_stack("item_three")

puts "Objects currently on the stack: "
puts a.stack
taken = a.take_from_stack
puts "Removed this object:"
puts taken
puts "Now on stack: "

puts a.stack