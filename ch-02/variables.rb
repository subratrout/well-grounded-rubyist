# have limited scope, ex. only visible to method definition

def say_goodbye
	x = "Goodbye"
	puts x 
end

def start_here
	x = "Hello"
	puts x
	say_goodbye
	puts "Let's check whether x remained the same:"
	puts x
end

start_here


#  variable don’t hold object values.         
#  Rather,contains a reference to that object

str = "This is a string"
abc = str
str.replace("The string is replaced")
puts str
puts abc

def say_goodbye_again
	str = "Hello"
	abc = str
	str.replace("Goodbye")
	puts str 
	puts abc
end

say_goodbye_again

# But when you assign a variable to a integer value or symbols 
# or booleans or nil value, the variable holds
# the value itself rather than a reference to it

str_first = "I am the first variable"
abc = str_first
str_first = "Then I became the second variable"

puts str_first
puts abc


# Referemces and method arguments

def change_string(str)
	puts str.replace("New string content!")
end

s = "Original string content"

change_string(s)

#Duping and freezing an object

# If you want to protect objects from being changed inside methods to which 
# you send them, you can use the dup method, which duplicates an object:

t = "Original string content for dupling"
change_string(t.dup)

u = "Original string content for freezing"
u.freeze

# when you call change_string(u)
# it will give error saying that can't modify frozen String (RuntimeError)

# if you clone a frozen object, the clone is also frozen—whereas 
# if you dup a frozen object, the duplicate isn’t frozen

numbers = ["one", "two", "three"]

numbers.freeze 

 # numbers[2] = "four"

#  can't modify frozen Array (RuntimeError)

numbers[2].replace("four")

puts numbers

# strings inside the array aren’t frozen. 
# If you do a replace operation on the string "three", turning it into "four