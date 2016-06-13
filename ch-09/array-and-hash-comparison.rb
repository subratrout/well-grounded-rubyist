# Ruby represents collections of objects by putting them inside container objects. In Ruby,
# two built-in classes dominate the container-object landscape: arrays and hashes.

# Array
# An array is an ordered collection of objects—ordered in the sense that you can select objects 
# from the collection based on a consistent, consecutive numerical index.

# An array’s job is to store other objects. Any object can be stored in an array, including other arrays,
# hashes, file handles, classes, true and false...any object at all. 


# Hashes

# Hashes are ordered collections that store objects in key value pairs, which can be retrived by
# using key. Hashes remember the order in which their keys were inserted; that’s the orderin which 
# the hash replays itself for you if you iterate through the pairs in it or print a string representation
# of it to the screen. keys are unique per hash: you can have only one key/value pair for any given key.

# Any Ruby object can serve as a hash key and/or value, but keys are unique per hash: you can have only 
# one key/value pair for any given key. Hashes (or similar data storage types) are sometimes called dictionaries 
# or associative arrays in other languages

# An array is, in a sense, a hash, where the keys happen to be consecutive integers.
# Hashes are, in a sense, arrays, where the indexes are allowed to be anything, not just integers. 
# 
# 
array = ["ruby", "diamond", "emerald"]
hash = { 0 => "ruby", 1 => "diamond", 2 => "emerald" }
puts array[0]    # ruby
puts hash[0]     # ruby

# Hashes exhibit a kind of “meta-index” property, based on the fact that they have a certain number of key/value 
# pairs and that those pairs can be counted off consecutively. This property in action by stepping through a hash
# with the with_index method, which yields a counter value to the block along with the key and value:

hash2 = { "red" => "ruby", "white" => "diamond", "green" => "emerald" }

hash2.each.with_index {|(key, value), i| puts "Pair #{i} is:: #{key}:#{value}"}

# Array can be created by four different ways
# 1. With the Array.new method
# 2. With the literal array constructor (square brackets)
# 3. With a top-level method called Array
# 4. With the special %w{...} and %i{...} notations

 
# When creating a new array using Array.new, you can give one argument to Array.new , you get an array of the size you asked for, 
# with all elements set to nil. When given two arguments , you get an array of the size you asked for, with each element initialized
# to contain the second argument.
array2 = Array.new(3)

puts "Array2 with one argument is: #{array2}"

n = 0

array3 = Array.new(4){n +=1; n *10}

puts "Array3 with two arguments is: #{array3}"


# When you initialize multiple elements of an array using a second argument to Array.new—as in Array.new(3, "abc")—all the elements 
# of the array are initialized to the same object. 
# 
array4 = Array.new(3, "abc")
puts "Array4 with two arguments but same object n times is: #{array4}"

# However, ff you do a = Array.new(3,"abc"); a[0] << "def"; puts a[1], you’ll find that the second element of the array is now "abcdef", 
# even though you appended "def" to the first element. That’s because the first and second positions in the array contain the same string object,
# not two different strings that happen to both consist of "abc". To create an array that inserts a different "abc" string into each slot, you 
# should use Array.new(3) { "abc" }. The code block runs three times, each time generating a new string (same characters, different string object).
# 
array4[0] << "def"
puts "Array4 with appending some element into 1st element also gives: #{array4}"


# Creating array using Top level Array method
# Just like Float or Integer method (can be used as to_f or to_i) or String method(to_s)


# The Array method creates an array from its single argument. If the argument object has a to_ary method defined, then Array calls that method on 
# the object to generate an array. (Remember that to_ary is the quasi-typecasting array conversion method.) If there’s no to_ary method, it tries 
# to call to_a. If to_a isn’t defined either, Array wraps the object in an array and returns that:

string = "A string"
puts "Does string object respond to array using to_ary method?"
puts string.respond_to?(:to_ary)

puts "Does string object respond to array using to_a method?"
puts string.respond_to?(:to_a)

# Output is a one element array as strings do not have either to_a or to_ary method
puts Array(string)

# Define to_a method for string
def string.to_a
  split(//)
end

# Now you can call Array method on string
puts Array(string)

# Howver the most common method is using literal method
# 
array5 = []

# The %w{} method of array constructor is used to generate an array of strings from the space separated string
# 
my_name = %w{Subrat N. Rout}
puts my_name


# The strings in the list are parsed as single-quoted strings. But if you need double-quoted strings, you can use %W instead of %w:
# 
array6 = %W{ Aaron is #{2016 - 1972} years old. }

puts array6


#  One can also create arrays of symbols using %i and %I. The i/I distinction, like the w/W distinction, pertains to single- versus 
#  double-quoted string interpretation:
array7 = %i{a b c}

puts array7

d = "Brian"

array8 = %I{"#{d}"}

puts array8