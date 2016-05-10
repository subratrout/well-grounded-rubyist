# The loop method does not take any normal argument rather takes a code block
# 
# loop do
#   do something
# end
# 
# One way to stop a loop is with break keyword
# 
n = 1
loop do
  n = n + 1
  puts "For N: #{n}"
  break if n > 9
end

# Another technique skips to the next iteration of the loop without finishing the current 
# iteration. To do this, you use the keyword next:
# 
x = 1
loop do 
  x = x + 1
  puts "For X: #{x}"
  next unless n == 10
  break
end


# Conditional looping is achieved via the keywords while and until.
# The while keyword allows you to run a loop while a given condition is true. A block starting
#  with while has to end with end. The code between while and end is the body of the while loop. 
#  

a = 1

while a < 11
  puts a
  a = a + 1
end
puts "Done with a..."

# You can also place while at the end of a loop. In this case, you need to use the keyword pair 
# begin/end to mark where the loop is (otherwise, Ruby won’t know how many of the lines previous 
# to the while you want to include in the loop):
# 
b = 1
begin
  puts b 
  b = b + 1
end while b < 11
puts "Done with b...."
