ary = [23, 54, 14]
ary.each { |item| print "#{item} " }	#=> 23 54 14

ary.each_with_index do |item, index|
	print "The ", index+1, " element is :", item, "\n"
end