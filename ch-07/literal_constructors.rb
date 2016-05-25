# Class with literal constructor
# When literal constructors are used new object is brought to an existence
# 
# String, Symbol, Array, Hash, Range, Regexp, Proc
# 
string1 = String.new
arr = Array.new

# Syntactic Sugar
# 

x = 1. + (2)

puts x

class Account
  attr_accessor :balance

  def initialize(amount = 0)
    self.balance = amount
  end

  def +(x)
    self.balance += x
  end

  def -(x)
    self.balance -= x
  end

  def to_s
    balance.to_s
  end
end

acc1 = Account.new
acc1 -= 5

puts acc1


# Unary Operators
# 
class Banner
  def initialize(text)
    @text = text
  end

  def to_s
    @text
  end

  def +@
    @text.upcase
  end

  def -@
    @text.downcase
  end

  def !
    reverse
  end
end

