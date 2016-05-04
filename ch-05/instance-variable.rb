class C
  def show_var
    @v = "I am an instance variable initialized to a string"
    puts @v
  end
  @v = "Instance variable can appear anywhere...."
end

C.new.show_var



class D
  puts "Just inside class definition block. Here is self: "
  p self
  @v = "I am an instance variable at the top level of a class body."
  puts "And here's the instance variable @v, belonging to #{self}:"
  p @v

  def show_var
    puts "Inside an instance method definition block. Here's self:"
    p self
    puts "And here's the instance variable @v, belonging to #{self}:"
    p @v
  end
end

d = D.new
d.show_var