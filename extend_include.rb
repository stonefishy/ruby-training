module ClassMethod
	def class_method
		"class method"
	end
end

module InstanceMethod
	def instance_method
		"instance method"
	end
end

class MyClass
	extend ClassMethod #使用extend方法定义类方法
	include InstanceMethod #使用include定义实例方法
end

if __FILE__ == $0
	p MyClass.class_method
	p MyClass.new.instance_method
end