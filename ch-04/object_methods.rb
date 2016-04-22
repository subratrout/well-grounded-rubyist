# The internal definitions of BasicObject, Object, and Kernel are written in the C language.

# The object can go upto Basic-Object when looking for methods but it has few.  Most Ruby's fundamental
# method objects are defined in 'Kernel' module that mixes in with methods in 'Object' object.

class BasicObject
  # a scant seven method definitions go here
end

module Kernel
  # over 100 method definitions go here!
end

class Object < BasicObject
  # one or two private methods go here,
  # but the main point is to mix in the Kernel module
  include Kernel
end

# Every class has Object—and therefore Kernel and BasicObject—among its ancestors. 


# The rule for objects is analogous to the rule for classes and modules: an object can see only 
# one version of a method with a given name at any given time. If the object’s method-lookup path 
# includes two or more same-named methods, the first one encountered is the “winner” and is executed.

module InterestBearing
  def calculate_interest
    puts "Placeholder! We're in module InterestBearing."
  end
end

class BankAccount
  include InterestBearing

  def calculate_interest
    puts "Placeholder! We're in class BankAccount."
    puts "And we're overriding the calculate_interest method..."
    puts "which was defined in the InterestBearing module."
  end
end

account = BankAccount.new
account.calculate_interest

#  if you define a method twice inside the same class, the second definition takes precedence over the first.
#  The same is true for modules.


# when a class mixes in two or more modules, more than one implements the method being searched for. In such a case, 
# the modules are searched in reverse order of inclusion—i.e, the most recently mixed-in module is
# searched first. If the most recently mixed-in module happens to contain a method with the same name as a method 
# in a module that was mixed in earlier, the version of the method in the newly mixed-in module takes precedence 
# because the newer module is closer on the object’s method-lookup path.

module M
  def report
    puts "'report' method in module M"
  end
end

module N
  def report
    puts "'report' method in module N"
  end
end

class C
  include M
  include N
end

c = C.new
c.report

# output: 'report' method in module N

# Even if including the module twice will have no effect

class D
	include M
	include N
	include M
end

d = D.new
d.report

# output: 'report' method in module N