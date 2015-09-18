str1 = "Ruby"
str2 = "Ruby"

class << str1
	def hello
		puts "Hello #{self}"
	end
end

if __FILE__ == $0
	p str1.hello 						#=> "Hello Ruby"
	#p str2.hello						#=> 引发NoMethodError错误
end