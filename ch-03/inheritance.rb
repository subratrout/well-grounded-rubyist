# Downward-chaining relationship between two classes (the superclass and the subclass), whereby one 
# class “inherits” from another and the instances of the subclass acquire the behaviors i.e the 
# methods—defined in the superclass.

# The symbol < designates Magazine as a subclass of Publication

class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end

mag = Magazine.new
mag.publisher = "David A. Black"
mag.editor = "Joe Smith"
puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."


# Instances of Ezine have both publisher and editor attributes, 
# as defined in the superclass and super-superclass of Ezine
class Ezine < Magazine
end

# Any instance method you define in a given class can be called by instances of that class, 
# and also by instances of any subclasses of that class:

class Person
	def species
		"Home Sapiens"
	end
end

class Rubyist < Person 
end

subrat = Rubyist.new
puts subrat.species

# Objects get their behaviors from their classes, from their individual or singleton methods, 
# and also from the ancestors (superclass, super-superclass,and so on) of their classes

#IMPORTANT! 

# Ruby doesn’t allow multiple inheritance; every Ruby class can have only one superclass, 
# in keeping with the principle of single inheritance.

# However, ruby provides modules, which are bundles of programming functionality similar to classes 
# except that they don’t have instances), that can be easily grafted onto class’s family tree 
# to provide as many methods for objects as somebody needs.