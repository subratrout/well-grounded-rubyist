# The range is an object with a start and an end point which involves two concepts
# a. does a given value fall inside a range?
# b. and the range is treated as traversable collection of individual items

# You can only iterate through finite number of discrete identifiable values
# can't iterate over two floating numbers

# can be created in two ways.

r1 = Range.new(1, 100)

r2 = 1..100

# exculsive range
r3 = 1...100
p r1

p r1.begin
	
p r1.end

# The cover? method performs a simple test: if the argument to the method is greater than the range’s start point and less than its end 
# point (or equal to it, for an inclusive range), then the range is said to cover the object. The tests are performed using Boolean 
# comparison tests, with a false result in cases where the comparison makes no sense.                  

c = "a".."z"

p c.cover?("a")

p c.cover?("abc")
p c.cover?("A")

# The include? test treats the range as a kind of crypto-array—that is, a collection of values. The "a".."z" range, for example, is 
# considered to include (as measured by include?) only the 26 values that lie inclusively between "a" and "z".

p c.include?("a")                  