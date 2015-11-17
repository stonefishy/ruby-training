str = "This is a string"
str2 = "字符串"

#get the length of a string object
puts str.length			#=> 16
puts str.size			#=> 16
puts str2.length		#=> 3

#get the bytesize of a string 
puts str.bytesize		#=> 16
puts str2.bytesize		#=> 9

#judge the string if is empty
puts "".empty?			#=> true
puts "string".empty?	#=> false