# insert an element with the []= method—using the syntactic sugar that allows you to avoid the usual method-calling dot—do this:

a2 = []
a2[0] = "first"

#The second line is syntactic sugar for a.[]=(0,"first"). The result is a one-element array whose first (and only) element is the string "first".


# Setting or getting more than one array element at a time.                  
# 
b = ["cat", "dog", "sheep", "fish", "shrimp", "elephant"]

# syntactic sugar for a.[] = (3,2, ["cow", "deer"])
# The first element passed is the position of array to be changed and second one is to change number of values of array
b[3,2] = ["cow", "deer"]

puts b


# Another way for extracting multiple array elements is the values_at method. values_at takes one or more arguments representing indexes and returns
# an array consisting of the values stored at those indexes in the receiver array:
array = ["The", "dog", "ate", "my", "homework"]

selected_array = array.values_at(0, 3)

puts selected_array

# Slice method take 2 arguments (a starting index, length (canbe optional))


# Unshift method add an object to the beginning of the array

a1 = [1,2,3,4]
a1.unshift(0)

puts a1

# Push or << method add an object to the end of the array

a1.push(5)

puts a1

# The methods << and push differ in that push can take more than one argument
a1.push(6,7,8)

# Opposite to unshift and push are shift and pop.
# Shift removes one object from the begining of the array whereas pop removes and object from end of the array

# Shift and pop method return the removed object from the array
a = [1,2,3,4,5]
print "The original array: "
p a
popped = a.pop
print "The popped item: "
puts popped

print "The new state of the array: "

p a

shifted = a.shift

print "The shifted item: "

puts shifted

print "The new state of the array: "

p a

# shift and pop can remove more than one element at a time. Just provide an integer argument, and that number 
# of elements will be removed.The removed items will be returned as an array

