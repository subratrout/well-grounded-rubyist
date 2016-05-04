# class variable begins with @@ and it provides a storage mechanism that’s shared between a class and
# instances of that class, and that’s not visible to any other objects. 

# class variable = visibility to a class and its instances

# Local variables don’t survive 
# the scope change between class definitions and their inner method definitions. 
# Typically, this means being visible in class-method definitions and instance-method definitions, 
# and sometimes at the top level of the class definition.

class Car
	@@makes = []
	@@cars =  {}
	@@total_count = 0

	attr_reader :make

	def self.total_count
		@@total_count
	end

	def self.add_make(make)
		@@makes << make unless @@makes.include?(make)
	end

end