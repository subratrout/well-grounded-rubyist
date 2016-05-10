# you can call a protected method on an object x, as long as the default object (self) is an instance of the same class as x or of an ancestor or descendant class of x’s class.
# 
class C
  def initialize(n)
    @n = n
  end

  def n
    @n
  end

  def compare(c)
    if c.n > n
      puts "The other object's n is bigger"
    else
      puts "The other object's n is same or smaller."
    end
  end

  protected :n

end


c1 = C.new(100)
c2 = C.new(101)
c1.compare(c2)


# The goal in this above is to compare one C instance with another C instance. The comparison depends on the result of a call to the method n. 
# The object doing the comparing (c1, in the example) has to ask the other object (c2) to execute its n method. Therefore, n can’t be private.

# With n protected rather than private, c1 can ask c2 to execute n, because c1 and c2 are both instances 
# of the same class. But if you try to call the n method of a C object when self is anything other than an 
# instance of C (or of one of C’s ancestors or descendants), the method fails.