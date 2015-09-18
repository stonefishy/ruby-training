module HelloModule
	Version = "1.0"

	def say_hello(name)
		puts "Hello #{name}"
	end
end

class HelloClass
	include HelloModule
end