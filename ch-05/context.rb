# There are class-definition blocks, module-definition blocks, and method-definition blocks.
# 
puts "Top Level"

puts "Self is #{self}"

class C
  puts "Class definition block: "
  puts "self is #{self}"

  def self.x 
    puts "Class method C.x: "
    puts "self is #{self}"
  end

  def m
    puts "Instance method C#m: "
    puts "seif is #{self}"
  end
end

puts C.x
c = C.new
puts c.m