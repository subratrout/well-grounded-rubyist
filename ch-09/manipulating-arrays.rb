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

a1 = [1, 2, 3, 4]
a1.unshift(0)

puts a1

# Push or << method add an object to the end of the array

a1.push(5)

puts a1

# The methods << and push differ in that push can take more than one argument
a1.push(6, 7, 8)

# Opposite to unshift and push are shift and pop.
# Shift removes one object from the begining of the array whereas pop removes and object from end of the array

# Shift and pop method return the removed object from the array
a = [1, 2, 3, 4, 5]
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

a4 = %w{ one two three four five }

p a4.pop(2)
 #a=> ["one", "two", "three"]

p a4.shift(2)
#["one", "two"]
puts a4
#["three"]
#
#
#Combining arrays with other arrays
#
# When combining two arrays, one array is always the receiver of the message. The other arrays involved in the operation
# are arguments to the method.
a = [1, 2, 3]
b = [4, 5, 6]
c = a.concat(b)
p c

x = [10, 11, 12]
y = [13, 14, 15]

z = x + y
p z

# Another array-combining method, is replace which replaces the contents of one array with the contents of another

m = [20, 21, 22]
n = [23, 24, 25]

s = m.replace(n)

p s



array_old = [1, 2, 3]

array_new = array_old

array_old.replace([4, 5, 6])

p array_new

array_old = [7, 8, 9]

p array_new 

p array_old



# ARRAY TRANSFORMATION
# 
# flatten method
# 
#  Flatten method does un-nesting of inner arrays. One can specify how many levels of flattening you want,
#   with the default being the full un-nesting.
#   
nested_array = [1, 2, [3, 4, [5], [6, [7,8]]]]

p nested_array.flatten

p nested_array.flatten(1)

p nested_array.flatten(2)

# Adding a ! to the method permanently alter the value of array
# 
# Array.reverse
# Array.join
# * method also join the arrays
# 
# Uniq method  uniq gives you a new array, consisting of the elements of the original array with all duplicate elements removed
# 
# 
# Compact method returns a new array identical to the original array, except that all occurrences of nil have been removed:
# 
# 
# ARRAY QUERYING
# 
# a.size (synonym: length)  Number of elements in the array
# a.empty?  True if a is an empty array; false if it has any elements
# a.include?(item)  True if the array includes items; false otherwise
# a.count(item) Number of occurrences of item in array
# a.first(n=1)  First n elements of array
# a.last(n=1) Last n elements of array
# a.sample(n=1) n random elements from array


# In the cases of first, last, and sample, if you don’t pass in an argument, you get just one element back. If you do pass in an argument n, 
# you get an array of n elements back—even if n is 1.