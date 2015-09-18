MyError = Class.new(StandardError)		#自定义MyError异常

#自定义MyError1异常继承自MyError，并重写message方法
class MyError1 < MyError
	def message
		"the exception message is from MyError1"
	end
end

#自定义MyError2异常继承自MyError，并重写message方法
class MyError2 < MyError
	def message
		"the exception message is from MyError2"
	end
end

#自定义MyError3异常
MyError3 = Class.new(MyError)

#定义带块的处理异常的方法
def raiseException
	yield
rescue MyError1 => ex
	puts ex.message
rescue MyError2 => ex
	puts ex.message
rescue
	puts $!.message
end

#抛出异常MyError1
raiseException do
	raise MyError1		#=> the exception message is from MyError1		
end

#抛出异常MyError2	
raiseException do
	raise MyError2		#=> the exception message is from MyError2
end

raiseException do
	raise MyError3, "customized message for MyError3"
end
