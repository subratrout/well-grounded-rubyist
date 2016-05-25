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
