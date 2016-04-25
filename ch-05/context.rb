# There are class-definition blocks, module-definition blocks, and method-definition blocks.
# 
puts "Top Level"

puts "Self is #{self}"

class C
  puts "Class definition block: "
  puts "self is #{self}"

  def self.x 
    puts "Class method C.x: "
    put "self is #{self}"
  end

  def m
    puts "Instance method C#m: "
    puts "seif is #{self}"
  end
end

c = Class.new

puts c.x

puts c.m