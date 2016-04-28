# Ruby provides you with a start-up self at the top level. If you ask it to identify itself with

# ruby -e 'puts self' will print out 'main'

# The term top-level refers to program code written outside of any class- or module-definition block.

# main is a special term that the default self object uses to refer to itself. You can’t refer 
# to it as main; Ruby will interpret your use of main as a regular variable or method name. If you 
# want to grab main for any reason, you need to assign it to a variable at the top level:

m = self

puts m