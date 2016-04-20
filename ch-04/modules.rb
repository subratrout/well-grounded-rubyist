# starts with module keyword
# modules don’t have instances. Instead, modules get mixed in to classes, 
# using either the include method or the prepend method.

module MyFirstModule
  def say_hello
    puts "Hello, This is my first module."
  end
end

# A module “mixed in” in this manner is sometimes referred to as a “mix-in.” 
# The result of mixing in a module is that instances of the class have access 
# to the instance methods defined in the module.

class ModuleTester
  include MyFirstModule
end

my_module = ModuleTester.new
my_module.say_hello

# Modules open up lots of possibilities—particularly for sharing code among 
# more than one class, because any number of classes can mix in the same module

# The main difference between inheriting from a class and mixing 
# in a module is that you can mix in more than one module where as no class
# can inherit from more than one class.

# Syntax of require/load vs. syntax of include

# require and load take strings as their arguments, whereas include takes the name 
# of a module in the form of a constant

# it’s because require and load are locating and loading disk files, whereas include 
# and prepend perform a program-space, in-memory operation that has nothing to do 
# with files. It’s a common sequence to require a feature and then include a module 
# that the feature defines. 

# It is a common practice to name class as a noun whereas to module as adjective.