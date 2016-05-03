class C
	def C.no_dot
		puts "As long as self is C, you can call this method with no dot."
	end
	no_dot
end

C.no_dot

# The most common use of the dotless method call occurs when you’re calling one instance method from another.

class D
  def x
    puts "This is method 'x'"
  end

  def y
    puts "This is method 'y', about to call x without a dot."
    x
  end
end

d = D.new
d.y

# When the method name ends with an equal sign i.e a setter method you can't omit the object-plus-dot part of method call
# because ruby always interprets the sequence identifier = value as an assignment to local variable


# dotless method invocations allow you to use one method makes use of another

class Person
	attr_accessor :first_name, :middle_name, :last_name

	def whole_name
		n = first_name + "  "
		n << "#{middle_name} " if middle_name
		n << last_name
	end
end

david = Person.new
david.first_name = "David"
david.last_name = "Black"

puts "David's whole name is : #{david.whole_name}"

david.middle_name = "A."

puts "David's whole name is : #{david.whole_name}"