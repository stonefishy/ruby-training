class Greeter
	@@greeter_count = 0
	attr_accessor :name

	def initialize(name = "Ruby")
		@name = name
	end

	public
	def say_hello
		puts "Hello #{@name}"
		@@greeter_count += 1
	end

	def say_bye
		puts "Bye #{self.name}"
	end

	def say_haha
		puts "Haha #{@name}"
	end
	
	private :say_haha
	
	class << self
		def good_afternoon(name)
			puts "Good afternoon #{name}"
		end
	end

	def Greeter.greeter_count
		@@greeter_count
	end
end

class << Greeter
	def good_morning(name)
		puts "Good morning #{name}"
	end
end

if __FILE__ == $0
	greeter = Greeter.new("world")
	greeter.say_hello
	greeter = Greeter.new
	greeter.say_hello
	Greeter.good_morning("Ruby")
	Greeter::good_morning("Ruby")
	Greeter.good_afternoon("Ruby")
	p Greeter.greeter_count
	p Greeter.instance_methods
end