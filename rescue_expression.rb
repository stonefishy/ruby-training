def parseInt(param)
	Integer(param) rescue 0
end

puts parseInt("123")
puts parseInt("abc")