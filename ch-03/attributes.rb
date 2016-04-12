# An attribute is a property of an object whose value can be read/or written through the object
# The attributes of Ruby objects are implemented as reader and/or writer methods wrapped around instance variables
# or, preferrably instance variables wrapped up in reader and/or writer methods.

# Automatic creation of attributes

class Ticket
  
  def initialize(venue, date)
    @venue = venue
    @date = date
  end
 
 # price is both read and write attribute
  def price=(price)
    @price = price
  end
 
 # Venue and date are read only attributes
  def venue
    @venue
  end

  def date
    @date
  end

  def price
    @price
  end
end

# In Ruby syntactically it can be written as below to avoid repetition

class Ticket
	attr_reader :venue, :date, :price
	attr_writer :price
 	#or you can write attr_accessor :price which is equivalent to attr_reader plus attr_writer
	def initialize(venue, date)
		@venue = venue
		@date = date
	end
end