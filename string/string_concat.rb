#using '+', will create a new string object
str1 = "hello "
str2 = "world"
str3 = str1

puts str1 + str2 			#=> hello world
puts str1					#=> hello

puts str1 = str1 + str2 	#=> hello world
puts str1					#=> hello world
puts str3					#=> hello


#using '<<', will change the original string object
str1 = "hello "
str2 = "world"
str3 = str1

puts str1<<str2				#=> hello world
puts str1					#=> hello world
puts str3					#=> hello world

#using 'concat' method, also will change the original string object
str1 = "hello "
str2 = "world"
str3 = str1

puts str1.concat str2		#=> hello world
puts str1					#=> hello world
puts str3					#=> hello world
