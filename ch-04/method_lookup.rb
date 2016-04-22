module M
	def report
		puts "'report' method in module M"
	end
end

class C
	include M
end

class D < C
end

obj = D.new
obj.report

# When an object has to respond to a method call it looks up in its method look up path if not found
# then it if any mixin modules or its superclass. The search ends when the method being searched for is found, 
# or with an error condition if it isn’t found which is triggered by a special method called method_missing, 
# which gets called as a last resort for otherwise unmatched messages.

obj.play

# The object can go upto Basic-Object when looking for methods but it has few.  Most Ruby's fundamental
# method objects are defined in 'Kernel' module that mixes in with methods in 'Object' object.

#singleton method—a method defined directly on an object

# where in the method-lookup path singleton methods lie. The answer is that they lie in a special class, 
# created for the sole purpose of containing them: the object’s singleton class.