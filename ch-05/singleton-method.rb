# when a singleton method is executed, self is the object that owns the method
obj = Object.new

def obj.show_me
	puts "Inside the singleton method show_me of #{self}"
end

obj.show_me

puts "Back from call to show_me by #{obj}"