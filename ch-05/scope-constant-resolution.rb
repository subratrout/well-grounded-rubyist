# constants can be defined inside class- and method-definition blocks. If you know the chain of 
# nested definitions, you can access a constant from anywhere.

module M
	class C
		class D
			module N
				X = 1
			end
		end
	end
end

puts M::C::D::N::X

# Constants have a kind of global visibility or reachability: as long as you know the path to a constant 
# through the classes and/or modules in which it’s nested, you can get to that constant. Stripped of their 
# nesting, however, constants definitely aren’t globals. The constant X in one scope isn’t the constant
# X in another:

module A
	class B
		X = 4
		class P
			module K
				X = 2
			end
		end
	end
end

puts A::B::P::K::X

puts A::B::X


# Constant lookup

module M
	class C
		class D
			module N
				P = 1
			end
		end
		puts "The constant lookup is #{D::N::P}"
	end
end
