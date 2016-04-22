# Inside the body of a method definition, you can use the super keyword to jump up to the next-highest 
# definition in the method-lookup path of the method you’re currently executing.

module M
	def report
		puts "'report' method in module M"
	end
end

class C
	include M

	def report
		puts "'report' method in class C"
		puts "About to trigger the next higher up report method..."
		super
		puts "Back from the super call."
	end
end

c = C.new
c.report

# the way super handles arguments is: 1. Called with no argument list (empty or otherwise), super automatically 
# forwards the arguments that were passed to the method from which it’s called. 2.Called with an empty argument 
# list—super()—super sends no arguments to the higher-up method, even if arguments were passed to the current 
# method. 3.Called with specific arguments—super(a,b,c)—super sends exactly those arguments.