#using i optional symbol to ignore the cap
reg1 = /test String/i
reg2 = Regexp.new("test string", Regexp::IGNORECASE)
puts reg1 =~ "test string"     #=> 0
puts reg1 =~ "test string"     #=> 0

#using x optional symbol to ignore the white space symbol
reg1 = /test string/x
reg2 = Regexp.new("test string", Regexp::EXTENDED)
puts reg1 =~ "teststring"      #=> 0
puts reg1 =~ "teststring"      #=> 0

#using m optional symbol to match multiline
reg1 = /test\nstring/m
reg2 = Regexp.new("test\nstring", Regexp::MULTILINE)
puts reg1 =~ "test\nstring"
puts reg1 =~ "test\nstring"      #=> 0
