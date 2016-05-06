# Simple conditional
 x= 15
if x > 10
	puts "x is greater than 10"
end


# simple conditional with if and else

# if condition 1
# 	execute something
# else
# 	execute something
# end

# Cascading a conditional using elsif conditionals

# You can have any number of elsif clauses in a given if statement. The code segment corresponding to the first 
# successful if or elsif is executed, and the rest of the statement is ignored:

print "Enter an integer: "
n = gets.to_i
if n > 0
  puts "Your number is positive."
elsif n < 0
  puts "Your number is negative."
else
  puts "Your number is zero."
end

#  The else clause is executed if none of the previous tests for truth has succeeded. If none of the 
# conditions is true and there’s no else clause, the whole if statement terminates with no action.

# if !(some condition) can also be expressed as unless
y =45

unless y > 100
  puts "Small number!"
else
  puts "Big number!"
end

# if/else reads better than unless/else

if y <= 100
  puts "Small number!"
else
  puts "Big number!"
end

# Conditional modifiers
# Conditional modifiers have a conversational tone

puts "Big number!" if x > 100

# or

puts "Big number!" unless x <= 100

# But try to avoid really long statements that end with conditional modifiers, though; they can be hard to read, 
# and hard to keep in your head while waiting for the modifier at the end


# Value of if statement

# Like other statements in Ruby, every if statement evaluates to an object. 

z = 1

if z < 0
	"negative"
elsif z > 0
	"positive"
else
	"zero"
end
# As irb will tell you, the value of that entire if statement is the string "positive".


# An if statement that doesn’t succeed anywhere returns nil. Here’s a full irb example of such a case:

m =5

if m == 2
	"it is 2"
elsif m == 3
	"it is 3"
end

