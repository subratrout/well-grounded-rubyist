# The times method is an instance method of the Integer class, which means you call 
# it as a method on integers. It runs the code block n times, for any integer n, and 
# at the end of the method the return value is n.

5.times {puts "Writting this for 5 times."} # to get the value try it in irb instead of 
																						# running the entire file in terminal


# Yielding to a block and returning from a method are two different things
# A method may yield to its block any number of times, from zero to infinity 
# but every method call causes method to run once and returns exactly once 
# (assuming no fatal errors)

6.times {|i| puts "I'm on iteration #{i}!" }

# Implementation of my_times method similar to times method in Ruby

class Integer
	def my_times
		n = 0
		until n == self
			yield(n)
			n += 1
		end
		self
	end
end

5.my_times { |i| puts "I am printing my_times method on iteration of #{i}"}