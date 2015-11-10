def total(from, to, &block)
	result = 0
	from.upto(to) do |num|
		if block							#如果有块对象
			result += block.call(num)		#执行快对象
		else
			result += num
		end
	end
	result
end

puts total(1, 10)							#=> 55
puts total(1, 10) { |num| num * 2}			#=> 110