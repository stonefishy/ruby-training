def my_each(ary, &block)	
	ary.each(&block)			#将proc对象以块的形式传递给数组的each方法
end

my_each([1, 2, 3]) do |i|
	print "#{i} "
end
