# insert an element with the []= method—using the syntactic sugar that allows you to avoid the usual method-calling dot—do this:

a = []
a[0] = "first"

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