#using $number to get the matched symbol
reg = /(.)(C.)(.)/
str = "ABCDE"
reg =~ str

puts $1   #=> B
puts $2   #=> CD
puts $3   #=> E

#using ?: symbol to escape the string which you don't want get
reg = /(.)(?:C.)(.)/
str = "ABCDE"
reg =~ str

puts $1   #=> B
puts $2   #=> E

#using $`, $&, $'
reg = /(C.)/
str = "ABCDE"
reg =~ str

puts $`     #=> AB
puts $&     #=> CD
puts $'     #=> E
