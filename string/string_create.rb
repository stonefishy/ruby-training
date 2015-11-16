#普通创建
str = "this is a string"
puts str

str = 'this is also a string'
puts str

args = "string with argument"
puts "this is a #{args}"

str = "Hello 'string'"
puts str

str = "Hello \"string\""
puts str

#使用%Q或%q创建
puts %Q(this string created by %Q)

puts %q(this string created by %q)

puts %Q(contains 'special' "character" directly)

puts %q(contains 'special' "character" directly)

#使用Here Document语法创建
str = <<EOB
the first string
the second string in a new line
ok, I also get the third string
EOB

print str 		#=> the string has three lines, just like defined

#使用` `
str = `ls -l`

puts str

#使用printf和sprintf
number = 123
printf("%d\n", number)		#=> 123
printf("%4d\n", number)		#=>  123
printf("%04d\n", number)    #=> 0123
printf("%+d\n", number)		#=> +123

name = "Ruby"
p sprintf("Hello,%s", name)
p sprintf("Hello,%8s", name)
p sprintf("Hello,%-8s", name)