#split string with a special character
str = "This is a string"
p str.split(" ") 		#=> ["This", "is", "a", "string"]

#delete the last character from a string
str = "hello ruby"
puts str.chop			#=> hello rub
puts str 				#=> hello ruby
puts str.chop!			#=> hello rub
puts str 				#=> hello rub

#delete the line break character from a string
str = "hello ruby\n"
p str  					#=> "hello ruby\n"
p str.chomp 			#=> "hello ruby"
p str.chomp!			#=> "hello ruby"
p str 					#=> "hello ruby"

#get the index which is the position of a string in another string
str1 = "aaabbbbbb"
str2 = "bb"

puts str1.index(str2)   #=> 3
puts str1.rindex(str2)  #=> 7

#a string whether contains another string
str1 = "abc"
str2 = "ab"
puts str1.include?(str2) #=> true

#the replacing of string
puts "hello".sub('l', '*')		#=> he*lo
puts "hello".gsub('l', '*')		#=> he**o

str = "hello"
str[2] = '*'
puts str 						#=> he*lo

str[2..3] = '**'       
puts str      					#=> he**o

str[1, 3]= '***'  		
puts str 						#=> h***o


#the slice of string
str = "hello ruby"
puts str.slice(1)				#=> e
puts str.slice(1..3)			#=> ell
puts str.slice(2, 3)			#=> llo


#the enumerable of string
str = <<EOB
hello
ruby
EOB

p str 				#=> "hello\nruby\n"
#return enumerable
p str.each_line 				#=> #<Enumerator: "hello\nruby\n":each_line>

p str.each_line.map { |e| e.chomp  }   #=> ["hello", "ruby"]

p str.each_line.collect { |e| e.chomp.upcase} #=> ["HELLO", "RUBY"]

#delete the specific string from another string
str = "hello\n ruby\n"
p str.delete("\n")      #=> "hello ruby"
p str 					#=> "hello\n ruby\n"

p str.delete!("\n")		#=> "hello ruby"
p str 					#=> "hello ruby"

#reverse a string
str = "hello ruby"
p str.reverse 			#=> "ybur olleh"

#remove the white space at the begin and end of string
str = " hello ruby "
p str 					#=> " hello ruby"
p str.strip 		    #=> "hello ruby"

#text transform
str = "Hello RUBY"
p str.upcase 			#=> "HELLO RUBY"
p str.downcase			#=> "hello ruby"
p str.swapcase          #=> "hELLO ruby"
p str.capitalize		#=> "Hello ruby"

