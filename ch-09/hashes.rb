# Hash is a collection of objects. Each object is a key/value pairs, where any key and any value can be any Ruby object
# Based on keys you can perform a lookup function on hashes
# 
# Hash can be used to store a complete string along with their abbreviations
# 
state_hash = { "Connecticut" => "CT",
               "Delaware"    => "DE",
               "New Jersey"  => "NJ",
               "Virginia"    => "VA" }
print "Enter the name of a state: "
state = gets.chomp
abbr = state_hash[state]
puts "The abbreviation is #{abbr}."



# HASH CAN BE CREATED IN FOUR WAYS

#1. With literal constructor
#
literal_hash = {}

# The literal hash constructor is convenient when you have values you wish to hash that aren’t going to change;
#  you’ll type them into the program file once and refer to them from the program.


#2 With Hash.new method
#
#3. With Hash.[] method
#The third way to create a hash involves another class method of the Hash class: the method [] (square brackets).
# This method takes a comma-separated list of items and, assuming there’s an even number of arguments, treats them 
# as alternating keys and values, which it uses to construct a hash. 
# 
c = Hash["Connecticut", "CT", "Delaware", "DE" ]

#4. With the top-level method whose name is Hash
#
#
#Adding a key value pair to hash
#
state_hash ["New York"] = "NY"

# or state_hash.[] = ("New York", "NY")
# 
# Also store method can be used

state_hash.store("California", "CA")

# The keys are unique in any hash.
# If you add a key value pair to a hash with an existing key the new value is assigned to the key
# 
h = Hash.new
h["a"] = 1

h["a"] = 2

puts h

# Retrieving values from a hash

# The most common technique for retrieving hash values is the [] method. For example, to retrieve "CT" 
# from state_hash and assign it to a variable, do this:

conn_abbrev = state_hash["Connecticut"]


# Hashes also have a fetch method, which gives you an alternative way of retrieving values by key:
# 
# fetch differs from [] in the way it behaves when you ask it to look up a nonexistent key: fetch 
# raises an exception, whereas [] gives you either nil or a default you’ve specified (as discussed in 
# the next section). If you provide a second argument to hash, that argument will be returned, instead 
# of an exception being raised if the key isn’t found. 
# 
# 
# Values for multiple keys in one operation can be retrieved using values_at:
two_states =  state_hash.values_at("New Jersey", "Delaware")

p two_states

# By default, when you ask a hash for the value corresponding to a nonexistent key, you get nil:
h7 = Hash.new

puts "value of a hash with no key: #{h7["no_such_key"]}"
# But you can specify a different default value by supplying an argument to Hash.new:
# 
# COMBINING Hashes with another Hash can occur in two ways
# 
# 1. Destructive way: Where where the first hash has the key/value pairs from the second hash added to it directly; 
# The destructive operation is performed with the update method. Entries in the first hash are overwritten permanently 
# if the second hash has a corresponding key:
# 
h8 = {sam: "John", jones: "Jane"}
h9 = {sam: "Jim"}

h10 = h8.update(h9)
puts h10
# 2. In nondestructive way, where a new, third hash is created that combines the elements of the original two.
h11 = {sam: "John", jones: "Jane"}
h12 = {sam: "Jim"}
# when the two hashes being merged share a key, the second hash (h12, in this example) wins, ie its val
h13 = h11.merge(h12)
puts h13