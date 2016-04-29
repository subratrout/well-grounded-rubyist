# Class methods are, essentially, singleton methods attached to class objects.
#  def self.x is the same as def C.x.
class C
	def self.x 
	  puts "Class method of class C" 
	  puts "self: #{self}"
	end
end

C.x

class D < C

end


D.x