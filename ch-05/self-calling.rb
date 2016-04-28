class C
	puts "Just started class C: "
	puts self
	
	module M
		puts "Nested module C::M: "
		puts self
	end

	puts "Back in the outer level of C: "
	puts self

	def x
		puts "Class C, method x: "
		puts self
	end
end

# At the time the method gets defined, the most you can say is that self inside this method 
# will be some future object that calls the method.
c = C.new
c.x
puts "That is a call to x by: #{c}"

#  when the interpreter encounters a def/end block, it defines the method immediately. But 
# the code inside the method definition isn’t executed until later, when an object 
# capable of triggering its execution receives the appropriate message.