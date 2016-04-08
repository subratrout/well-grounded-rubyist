p Object.new.methods.sort


# Every object in Ruby has a unique ID number associated with it. 
# You can see an object’s ID by asking the object to show you its object_id
object1 = Object.new
puts "The id of object1 is #{object1.object_id}."

object2 = Object.new
puts "The id of object2 is #{object2.object_id}."

# Even though the variables a and b are different, the object they both refer to is the same.
a = Object.new
b = a 
puts "The id of a is #{a.object_id}."
puts "The id of b is #{b.object_id}."

string_1 = "Hello"
string_2 = "Hello"

puts "The id of string_1 is #{string_1.object_id}."
puts "The id of string_2 is #{string_2.object_id}."




# Querying an object’s abilities with the respond_to? method
