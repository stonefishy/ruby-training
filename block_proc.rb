hello = Proc.new do |name|			# 使用Proc.new方法定义块对象hello
	puts "Hello #{name}"
end

hello.call("world")					# 使用Proc.call方法调用块对象
hello.call("ruby")				