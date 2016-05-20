def args_unleased(a, b = 1, *c , d, e)
  puts "Arguments:"
  p a, b, c, d, e
end

def block_args_unleased
  yield(1, 2, 3, 4, 5)
end

block_args_unleased do |a, b = 1, *c, d, e|
  puts "Arguments: "
  p a, b, c, d, e
end

def block_scope_demo
  x = 100
  1.times do
    puts x
  end
end

block_scope_demo

def block_scope_demo2
  x = 100
  1.times do 
    x = 200
  end
  puts x
end


block_scope_demo2

def block_local_parameter
  x = 100
  [1,2,3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it is now #{x}"
  end
  puts "Outer x is still #{x}"
end

block_local_parameter


def block_local_variable
  y = "Original y!"
  3.times do |i;y|
    y =i
    puts "y in the block is now #{y}"
  end
  puts "y after the block ended is #{y}"
end

block_local_variable