outcome = {"breakfast"=>10.00, "lunch"=>20.00, "dinner"=>15.00 }
sum_outcome = 0
outcome.each do |pair|			#pair是key，value组成的数组，pair[0]为key，pair[1]为value
	sum_outcome += pair[1]
end

puts sum_outcome

outcome.each { |key, value|
	puts "#{key} : #{value}"
}
