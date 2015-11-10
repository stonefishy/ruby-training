def total(from, to)
	result = 0
	from.upto(to) do |num|
		if block_given?					# 如果有快的话
			result += yield(num)		# 将经过块处理后的值累加
		else
			result += num
		end
	end
	result
end

print total(1, 10)						#=> 55
print total(1, 10) { |num| num * 2}		#=> 110