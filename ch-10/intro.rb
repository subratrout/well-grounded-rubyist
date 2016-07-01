# Enumerable and Enumerator

# collection objects in Ruby typically include the Enumerable module.

# You can mix Enumerable into your own classes. But also define an each instance method in the class

class D
	include Enumerable
	def each
		# code
	end
end

#  Enumerators are objects that encapsulate knowledge of how to iterate through a particular collection. 

# Any class to be enumerable must have an each method whose job is to yield items to a supplied code block, one at a time.
# When each is implemented, the methods in the Enumerable module depend on being able to call it.


# This class has an each method that yields one color at a time

class Rainbow  
	include Enumerable  
	def each    
		yield "red"    
		yield "orange"    
		yield "yellow"    
		yield "green"    
		yield "blue"    
		yield "indigo"    
		yield "violet"  
	end 
end

r = Rainbow.new

r.each do |color|
	puts "Next color: #{color}"
end

# As R]ainbow class mixed in the Enumerable module, rainbows are automatically endowed with a whole slew of methods 
# built on top of the each method. Let's use find
yellow_color = r.find {|color| color.start_with?("y")}

puts "First color starting with y is: #{yellow_color}"

# There is no need to define find as it is a part of enumerable


# Much of the searching and querying functionality for arrays, hashes, and other collection objects comes 
# directly from Enumerable. You can see what methods are available by 
p Enumerable.instance_methods(false).sort

#We use false to get only methods defined in Enumerable module