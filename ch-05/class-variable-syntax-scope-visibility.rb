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



# When you assign to @@value in Child, you’re setting the one and only @@value variable that’s 
# shared throughout the hierarchy—that is, by Parent and Child and any other descendant classes 
# of either of them. The term class variable becomes a bit difficult to reconcile with the fact 
# that two (and potentially a lot more) classes share exactly the same ones.

class Parent
	@@value = 100
end

class Child < Parent
	@@value = 200
end

class Parent
	puts @@value # will output 200
end

class Grantchild < Child
	@@value = 300
end

class Parent
	puts @@value # will output 300
end

# Class variables come in handy because they break down the dam between a class object and instances of that 
# class. But by so doing, and especially because of their hierarchy-based scope, they take on a kind of 
# quasi-global quality: a class variable isn’t global, but it sure is visible to a lot of objects,
# once you add up all the subclasses and all the instances of those subclasses. But they’re also leaky. 
# Too many objects can get hold of them.

# Let’s say we wanted to create a subclass of Car called Hybrid to keep a count of manufactured (partly) 
# electric vehicles. We couldn’t do this:

class Hybrid < Car
end

hy = Hybrid.new("Honda")

# because Hybrid.total_count is the same method as Car.total_count, and it wraps the same variable. Class variables 
# aren’t reissued freshly for every subclass, the way instance variables are for every object.

# we can use @@total_hybrid_count class variable but it is not the clean way to work

# So the alternative is 

# Maintaining per-class state with isntance variables of class objects


# we need to maintain state on a per-class basis; and because classes are objects, that means on a per-object 
# basis (for a certain group of objects, namely, class objects). And per-object state, whether the object
# in question is a class or something else, suggests instance variables.

# The following listing shows a rewrite of the Car class above. Two of the class variables are still there, 
# but @@total_count has been transformed into an instance variable.

class Car2
	@@makes = []
	@@cars = {}
	attr_reader :make 

	def initialize(make)
		if @@makes.include?(make)
			puts "Creating a new #{make} for car Class2"
			@make = make
			@@cars[make] += 1
			self.class.total_count += 1
		else
			raise "No such make: #{make}"
		end
	end

	def self.total_count
		@total_count ||= 0
	end

	def self.total_count=(n)
		@total_count = n
	end

	def self.add_make(make)
		@@makes << make unless @@makes.include?(make)
		@@cars[make] = 0
	end

	def make_mates
		@@cars[self.make]
	end

end

class Hybrid2 < Car2
end


Car2.add_make("Honda")
Car2.add_make("Toyota")
Car2.add_make("Ford")

h3 = Car2.new("Honda")
t3 = Car2.new("Toyota")
h4 = Car2.new("Honda")


h5 = Hybrid2.new("Honda")
h6 = Hybrid2.new("Ford")

puts "There are #{Hybrid2.total_count} hybrid on the road."