# Every method call in Ruby has the following syntax:

# A receiver object or variable (defaulting to self if absent)
# A dot (required if there’s an explicit receiver; disallowed otherwise)
# A method name (required)
# An argument list (optional; defaults to ())
# A code block (optional; no default)


# loop { puts "Hi" }
# loop() { puts "Hi" }
string = "This is a string."
string.scan(/[^,]+/)


# The difference between a method call with a block and a method call without a block comes down to whether or not the
# method can yield. If there’s a block, then it can; if not, it can’t, because there’s nothing to yield to.
# 
string.scan(/[^,]+/) {|word| puts word }


# CURLY BRACES VS. DO/END IN CODE BLOCK SYNTAX
#
array = [1, 2, 3]

puts "Array map result: "
puts array.map {|n| n * 10} # executed similar to puts(array.map {|n| n * 10 })

puts "Array map do end result: "

puts array.map do |n|     # executed similar to puts(array.map) do |n| n * 10 end
  n * 10
end

# The curly-brace version prints out the [10,20,30] array (one item per line, in keeping with how puts handles arrays) . 
# But the do/end version returns an enumerator—which is precisely what map does when it’s called with no code block

