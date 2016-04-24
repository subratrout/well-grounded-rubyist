# Module mix-ins are closely related to class inheritance. In both cases, one entity (class or module) 
# is establishing a close connection with another by becoming neighbors on a method-lookup path. 
# In some cases, you may find that you can design part of your program either with modules or with 
# inheritance.
# 
# Modules don’t have instances. It follows that entities or things are generally best modeled in classes, 
# and characteristics or properties of entities or things are best encapsulated in modules.
# class names tend to be nouns, whereas module names are often adjectives 
#  (Stack versus Stacklike).

# A class can have only one superclass, but it can mix in as many modules as it wants. If you’re using 
# inheritance, give priority to creating a sensible superclass/subclass relationship. Don’t use up a
#  class’s one and only superclass relationship to endow the class with what might turn out to be just 
#  one of several sets of characteristics.