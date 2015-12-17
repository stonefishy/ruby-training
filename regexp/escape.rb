#using \ symbol
reg = /ruby\*regexp/
puts reg =~ "ruby*regexp"     #=> 0
p reg =~ "rubyregexp"          #=> nil

#using Regexp#quote method
reg1 = %r(ruby*regexp)
reg2 = Regexp.new(Regexp.quote("ruby*regexp"))
str = "ruby*regexp"

p reg1 =~ str         #=> nil
p reg2 =~ str         #=> 0
