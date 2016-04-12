# A typical class consists of a collection of method definitions. 
# Classes usually exist for the purpose of being instantiated—that is, 
# of having objects created that are instances of the class.

# Object is a built in Ruby class
obj = Object.new

# Classes can respond to a message just like an objects
# Classes are objects defined by keyword "class" and are named with 
# constants begins with a capital letter

# A method defined inside a class and intended for use by all 
# instances of the class, are called instance methods.

class Ticket

	# This is a method that is shared by all class instances
  def event
  	"Can't really be specified yet.."
  end

end

# you can send a message to a class using dot notation

ticket = Ticket.new
puts ticket.event

# If there are two methods of same name in a class the last method overrides
# the first one.

# You can reopen a class in another file where the program’s design 
# demands that a class be defined partially in one place and partially in another.

# Instance Variables:
# The instance variable enables individual objects to remember state.
# starts with @ and only visible to the object to which they belong

# An instance variable initialized in one method inside a class 
# can be used by any method defined within that class.

class Person
	
	def set_name(string)
		puts "Setting peron's name..."
		@name = string
	end

	def get_name
		puts "Returning person's name.."
		@name
	end
end

harry = Person.new

harry.set_name("Harry")
puts harry.get_name

# Ruby has a method called initialize which can be executed each time you
# create a new instance of the class

class Ticket
	def initialize
		puts "Creating a new ticket"
	end
end

ticket2 = Ticket.new

# One can use initialize method to set an object's state at the time of its creation

# This can be done as sending correct values as arguments to Object.new

# And to get those value back we can use get methods by converting the values into instance variable

class Ticket2
	def initialize(venue, date)
		@venue = venue
		@date = date
	end

	def venue
		@venue
	end

	def date
		@date
	end
end

th = Ticket2.new("Town Hall", "11/12/13")
cc = Ticket2.new("Convention Center", "12/13/14")
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."

# When it need to change an object's state or value at some point other than initialize method
# it can be done calling a setter method with an argument and setting the appropriate
# instance variable to the argument.

# In ruby you can define a setter method that ends with equal sign(=)


class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end
end

# CLASSES AS OBJECTS AND MESSAGE RECEIVERS

# Classes are special objects: the only kind of object that has the power to spawn new objects (instances). 
#Nonetheless, they’re objects. When you create a class, you can send messages to it, add methods to it, 
# pass it around to other objects as a method argument, and generally do anything to it you would to another object.

# Creating a class Object

my_class = Class.new

# creating an instance of a class

instance_of_my_class = my_class.new

# Instances of Class can call methods that are defined as instance methods in their class. 
# my_class, for example, is an instance of Class, and Class defines an instance method called new. 
# That’s why we can write my_class.new            

# The superclass of Class is Module. Instances of Class therefore have access to the instance methods 
# defined in Module; among these are the attr_accessor family of methods. 

# ! Singleton method
# A singleton method defined on a class object is commonly referred to as a class method of the class 
# on which it’s defined. The idea of a class method is that you send a message to the object that’s the class
# rather than to one of the class’s instances. 

class Ticket
	def Ticket.most_expensive(*tickets)
  	tickets.max_by(&:price)
	end
end