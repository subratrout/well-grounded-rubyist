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

	def initialize(make)
		if @@makes.include?(make)
			puts "Creating a new #{make}"
			@make = make
			@@cars[make] += 1
			@@total_count += 1
		else
			raise "No such make: #{make}"
		end
	end

	def self.total_count
		@@total_count
	end

	def self.add_make(make)
		@@makes << make unless @@makes.include?(make)
		@@cars[make] = 0
	end

	def make_mates
		@@cars[self.make]
	end

end

Car.add_make("Honda")
Car.add_make("Toyota")

h = Car.new("Honda")
t = Car.new("Toyota")
h2 = Car.new("Honda")

puts "Counting cars of make same make as h2..."

puts "There are #{h2.make_mates}."

puts "Counting total cars: "

puts "There are #{Car.total_count}"