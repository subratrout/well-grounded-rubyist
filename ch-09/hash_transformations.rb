# transformations on hashes means that the method is called on a hash, and the result of the 
# operation (the method’s return value) is a hash. But some filter or select method can return
# array result
# 
# HASH to HASH operations
# 
# 1. To derive a subhash from an existing hash, use the select method. Key/value pairs will be passed in succession to the code block you provide. 
# Any pair for which the block returns a true value will be included in the result hash:
# 
h1 = Hash[1,2,3,4,5,6,7,8]

puts h1.select {|k, v| k > 1}

# Rejecting elements from a hash works in the opposite way—those key/value pairs for which the block returns true are excluded from the result hash:
puts h1.reject {|k,v| k >1}


# select and reject have in-place equivalents (versions that change the original hash permanently, rather than returning a new hash): select!
# and reject!. These two methods return nil if the hash doesn’t change. To do an in-place operation that returns your original hash (even if 
# it’s unchanged), you can use keep_if and delete_if.
# 
# Hash#invert flips the keys and the values. Values become keys, and keys become values:                  
# 
h2 = {tiger: "one", lion: "two"}

puts h2.invert

# Be careful when you invert hashes. Because hash keys are unique, but values aren’t, when you turn duplicate values into keys, one of the pairs is discarded:
# 
# Clearing a hash
h3 = {dog: 3, cat: 4}
h3.clear 
puts h3

# Like strings and arrays, hashes have a replace method:
h5 = { 1 => "one", 2 => "two" }.replace({ 10 => "ten", 20 => "twenty"})
puts h5



# HASH QUERYING
# 
# h.has_key?(1) True if h has the key 1
# h.include?(1) Synonym for has_key?
# h.key?(1) Synonym for has_key?
# h.member?(1)  Synonym for has_key?
# h.has_value?("three") True if any value in h is "three"
# h.value?("three") Synonym for has_value?
# h.empty?  True if h has no key/value pairs
# h.size  Number of key/value pairs in h
# 
# 
# 
# Hashes as final method arguments
# 
# If you call a method in such a way that the last argument in the argument list is a hash, Ruby allows you to write the hash without curly braces.
# If you call a method with a hash as first argument you must not only put curly braces around the hash but also put the entire argument list in 
# parentheses. If you don’t, Ruby will think your hash is a code block.
# 
# 
# 
# 
# Method with named arguments
# Using named arguments saves you the trouble of “unwrapping” hashes in your methods.
def m(a:, b:)
  p a, b
end

m(a:1, b:2)

# a method using keyword arguments that the method doesn’t declare? If the method’s parameter list includes a double-starred name, the variable of that name will sponge up all unknown keyword arguments into a hash, as follows:

def m1(a:1, b:2, **c)
  p a, b, c
end

m1(x:3, y:4)





