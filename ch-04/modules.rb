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