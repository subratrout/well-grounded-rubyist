class Cake
	def initialize(batter)
		@batter = batter
		@baked = true
	end
end

class Egg
end

class Flour
end

class Baker
	def bake_cake
		@batter = []
		pour_flour

		add_egg
		stir_batter
		return Cake.new(@batter)
	end

	def pour_flour
		@batter.push(Flour.new)
	end

	def add_egg
		@batter.push(Egg.new)
	end

	def stir_batter
	end

	private :pour_flour, :add_egg , :stir_batter

end

# If you don’t use an explicit receiver for a method call, Ruby assumes that you want to send the message 
# to the current object, self. Thinking logically, you can conclude that the message add_egg has an object 
# to go to only if self is an object that responds to add_egg. In other words,
# In other words, you can only call the add_egg instance method of Baker when self is an instance of Baker.

# And when is self an instance of Baker? When any instance method of Baker is being executed. Inside the
#  definition of bake_cake, for example, you can call add_egg, and Ruby will know what to do. Whenever 
#  Ruby hits that call to add_egg inside that method definition, it sends the message add_egg to self, 
#  and self is a Baker object.
#  
#  PRIVATE vs SINGLETON METHOD

#  It’s important to note the difference between a private method and a singleton method. A singleton method 
#  is “private” in the loose, informal sense that it belongs to only one object, but it isn’t private in the 
#  technical sense. (You can make a singleton method private, but by default it isn’t.) A private, non-singleton
#   instance method, on the other hand, may be shared by any number of objects but can only be called under
#    the right circumstances. What determines whether you can call a private method isn’t the object you’re 
#    sending the message to, but which object is self at the time you send the message.