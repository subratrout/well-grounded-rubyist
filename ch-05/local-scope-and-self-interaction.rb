# When you start a definition block (method, class, module), you start a new local scope, 
# and you also create a block of code with a particular self.

# This program below uses recursion: the instance method x calls itself. it is to demonstrate 
# that every time a method is called—even if a previous call to the method is still in the
# process of running- a new local scope is generated

class C
	def x(value_for_a, recurse =false)
		a = value_for_a
		print "here's the inspect-string for 'self': "
		p self
		puts "And here's a: "
		puts a
		if recurse
			puts "Calling myself (recursion)..."
			x("Second value for a")
			puts "Back after recursion, here's a: "
			puts a
		end
	end
end

c = C.new
c.x("First value for a", true)


# OUTPUT::

# here's the inspect-string for 'self': #<C:0x00000000cfa288>
# And here's a: 
# First value for a
# Calling myself (recursion)...
# here's the inspect-string for 'self': #<C:0x00000000cfa288>
# And here's a: 
# Second value for a
# Back after recursion, here's a: 
# First value for a

# It is also possible to change self without entering a new local scope with the instance_eval
# and instance_exec methods.

puts "Another way......."
d = C.new
d.x("Some other value for a when false: ", false)

