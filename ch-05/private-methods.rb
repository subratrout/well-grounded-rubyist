# Private means that the method can’t be called with an explicit receiver. 

#  PRIVATE vs SINGLETON METHOD

#  It’s important to note the difference between a private method and a singleton method. A singleton method 
#  is “private” in the loose, informal sense that it belongs to only one object, but it isn’t private in the 
#  technical sense. (You can make a singleton method private, but by default it isn’t.) A private, non-singleton
#  instance method, on the other hand, may be shared by any number of objects but can only be called under
#  the right circumstances. What determines whether you can call a private method isn’t the object you’re 
#  sending the message to, but which object is self at the time you send the message.
#    
#    The implementation of private access through the “no explicit receiver” rule runs into a hitch when 
#    it comes to methods that end with equal signs. 
#   

class Dog
  attr_reader :age, :dog_years

  def dog_years=(years)
    @dog_years = years
  end

  def age=(years)
    @age = years
    self.dog_years = years * 7
  end

  private :dog_years
end


rover = Dog.new
rover.age = 10
puts "Rover is #{rover.dog_years} in dog years"