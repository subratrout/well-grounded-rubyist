# Constants are be used to set and preserve important data values in classes.
# Begins with a capital letter
# A constant defined in a class can be referred to from inside the class’s instance or class methods. 
class Ticket
	VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  def initialize(venue, date)
  	if VENUES.include?(venue)
    	@venue = venue
    else
    	raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end
end

# A constant can be accessed from outside the class definition entirely, using a special 
# constant lookup notation: a double colon (::)

puts "The venues are: "
puts Ticket::VENUES

# REASSIGNING VS MODIFYING CONTSTANTS

# The first one is simply reassigning the contstant.
# The other sense in which it’s possible to “change” a constant is by making changes 
# to the object to which the constant refers.