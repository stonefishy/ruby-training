#whether two strings are equal
puts "aaa" == "aab" 		#=> false
puts "aaa" != "aab"			#=> true

#whether two strings are similar
reg = Regexp.new("^a+b$")
p "aaa" =~ reg 			#=> nil (not similar)
p "ab" =~ reg 			#=> 0 (similar)
p "aab" =~ reg 			#=> 0 (similar)
p "acb" =~ reg 			#=> nil (not similar)

#compare two strings, which is bigger
puts "aaa" > "aab"		#=> false
puts "aaa" <= "aab"		#=> true

#get the coding sequence of a char
puts "a".ord			#=> 97
puts "A".ord			#=> 65