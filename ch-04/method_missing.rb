# The Kernel module provides an instance method called method_missing. This method is executed whenever 
# an object receives a message that it doesn’t know how to respond to—that is, a message that doesn’t 
# match a method anywhere in the object’s method-lookup path:

o = Object.new
o.blah

# NoMethodError: undefined method 'blah' for #<Object: xxxx>

#You can override the method_missing, either on a singleton basis for the object you are calling the method on
# or in the object's class or on of that class's ancestors:

# Combine method missing with super

class Student
	def method_missing(m, *args)
		if m.to_s.start_with?("grade_for_")
			# return the appropriate grade, based on parsing the method name
		else
			super
		end
	end
end


class Person
	PEOPLE = []
	attr_reader :name, :hobbies, :friends

	def initialize(name)
		@name = name
		@hobbies = []
		@friends = []
		PEOPLE<< self
	end

	def has_hobby(hobby)
		@hobbies << hobby
	end

	def has_friend(friend)
		@friends << friend
	end
	
	def self.method_missing(m, *args)
		method = m.to_s
		if method.start_with("all_with_")
			# handle request here
			attr = method[9..-1]
			if self.public_method_defined?(attr)
				PEOPLE.find_all do |person|
					person.send(attr).include?(args[0])
				end
			else
				raise ArgumentError, "Can't find #{attr}"
			end
		else
			super
		end
	end
end






j = Person.new("John")
p = Person.new("Paul")
g = Person.new("George")
r = Person.new("Ringo")
j.has_friend(p)
j.has_friend(g)

g.has_friend(p)
r.has_hobby("rings")
Person.all_with_friends(p).each do |person|
  puts "#{person.name} is friends with #{p.name}"
end
Person.all_with_hobbies("rings").each do |person|
  puts "#{person.name} is into rings"
end