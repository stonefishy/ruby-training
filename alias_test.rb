class Greeter
	def say_hello
		puts "Hello"
	end
end

class RubyGreeter < Greeter
	alias old_say_hello say_hello  #将继承的say_hello方法设置别名为old_say_hello
	undef say_hello

	def say_hello1
		puts "Hello Ruby"
	end
end

if __FILE__ == $0
	rubyGreeter = RubyGreeter.new
	p rubyGreeter.old_say_hello		#=> "Hello"
	p rubyGreeter.say_hello				#=> "Hello Ruby"
end
