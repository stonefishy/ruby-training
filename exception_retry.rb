count = 0
num = 0
begin
	1 / num
rescue
	if count >= 5
		num += 1
	end

	count += 1
	
	retry
end

puts count