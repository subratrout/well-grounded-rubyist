# Scope refers to the reach or visibility of identifiers, specifically variables and constants.
# 
# GLOBAL VARIABLE
# 
# Global scope is scope that covers the entire program. Global scope is enjoyed by global variables, 
# which are recognizable by their initial dollar-sign ($) character. They’re available everywhere. 
# They walk through walls: even if you start a new class or method definition, even if the identity 
# of self changes, the global variables you’ve initialized are still available to you.
# 
$gvar = "I'm a global variable!"

class C
  def examine_global
    puts $gvar
  end
end

c = C.new
c.examine_global


# Globally scoped data is fundamentally in conflict with the object-oriented philosophy of endowing 
# objects with abilities and then getting things done by sending requests to those objects.
# Global variables distort the landscape by providing a layer of information shared by every 
# object in every context. The result is that objects stop talking to each other and, instead, 
# share information by setting global variables.
# 


# LOCAL SCOPE

# 1. The top level (outside of all definition blocks) has its own local scope.
# 2. Every class or module-definition block (class, module) has its own local scope, even nested class-/module-definition blocks.
# 3. Every method definition (def) has its own local scope; more precisely, every call to a method generates a new local scope, 
# with all local variables reset to an undefined state.
# 
# Every time you cross into a class-, module-, or method-definition block—every time you step over a class, module, 
# or def keyword—you start a new local scope. 
a = 0
def t
  puts "Top level method t"
end

class D
  a = 1

  def self.x 
    a = 2
    puts "C.x: a = #{a}"
  end

  def m
    a = 3
    puts "C#m : a = #{a}"
  end

  def n
    a = 4
    puts "C#n: a = #{a}"
  end

  puts "Class scope: a = #{a}"
end

D.x
d = D.new 
d.m 
d.n
puts "Top level: a = #{a}"