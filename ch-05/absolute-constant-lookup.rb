
class Violin
	class String
		attr_accessor :pitch
		def initialize(pitch)
			@pitch = pitch
		end
	end

	def initialize
		@e = String.new("E")
		@a = String.new("A")
	end

	# When you are referring to built in original String class
	def history
		::String.new(maker+ ", "+date)
	end

end