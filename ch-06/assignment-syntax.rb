# Assignment syntax and conditional expressions cross paths at two points: in the bodies of conditional 
# expressions, where the assignments may or may not happen at all, and in the conditional tests themselves:

# if x == 1 # Assignment in conditional test
# 	y =2 # Assignment in coditional body
# end

# Local variable assignment in a conditional body                  

# When the Ruby parser sees x= 1, the sequence identifier, equal-sign, and value, as in this expression,
# it allocates space for a local variable called x. The creation of the variable—not the assignment of 
# a value to it, but the inte rnal creation of a variable—always takes place as a result of this kind of 
# expression, even if the code isn’t executed
# 
if false
  z = 1
end

p z #output will: nill

# p k # Fatal error: y is unknown

name = "Subrat N Rout"

if m = /Ro/.match(name)
  puts "Found a match!"
  print "Here is the unmatched start of string: "
  puts m.pre_match
  print "Here is the unmatched end of string: "
  puts m.post_match
else
  puts "No match"
end

# The above also can be written as
# m = /la/.match(name)
# if m
# ...etc
# 
# CASE STATEMENT
# 
# A case statement starts with an expression— usually a single object or variable, and then walks it through a list
# of possible matches. Each possible match is contained in a when statement consisting of one or more possible matching 
# objects and a segment of code. 
# When one of the terms in a given when clause matches, that when is considered to have “won,” and its code segment 
#  is executed. Only one match, at most, can win.
#  
print "Exit the progarm? Yes or No: "

answer = gets.chomp

case answer
when "yes"
  puts  "Good-bye!"
  exit
when "no"
  puts "Ok, we will continue"
else
  puts "That is an unknown ans.. assuming you meant no: "
end
puts "Continuing with program..."


# You can put more than one possible match in a single when, as this snippet shows:
# The comma between multiple conditions in a when clause is a kind of “or” operator; 
# this code will say “Good-bye!” and exit if answer is either "y" or "yes".
# 
# case answer
# when "y", "yes"
#   puts "Good-bye!"
#   exit 
#   etc
#   
# Implementing case statement behavior for the Ticket class

# case/when logic is thus really object === other_object logic in disguise; and object === other_object
#  is really object. === (other_object) in disguise. By defining the threequal method however you wish 
#  for your own classes, you can exercise complete control over the way your objects behave inside a case statement.  

class Ticket
  attr_accessor :venue, :date
  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.venue == other_ticket.venue
  end
end

ticket1 = Ticket.new("Town Hall", "07/09/16")
ticket2 = Ticket.new("Conference Center", "08/09/16")
ticket3 = Ticket.new("Town Hall", "09/09/16")

puts "ticket1 is for an event at: #{ticket1.venue}"

case ticket1
when ticket2
  puts "Same location as ticket2."
when ticket3
  puts "Same location as ticket3"
else
  puts "No match"
end

