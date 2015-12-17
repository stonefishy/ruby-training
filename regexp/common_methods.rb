#using sub and gsub
reg = /\s+/
str = "This is test string"

puts str.sub(reg, '-')   #=> "This-is test string"
puts str.gsub(reg, '-')   #=> "This-is-test-string"

#using the block of sub and gsub methods
reg =/i/
str = "This is test string"

result = str.sub(reg) do |matched|
  matched.upcase
end

puts result     #=> ThIs is test string

result = str.gsub(reg) do |matched|
  matched.upcase
end

puts result     #=> ThIs Is test strIng

reg = /(r)(.)/
str = "racrtrhrdra"
str.scan(reg) do |matched|
  p matched
end

#["r", "a"]
#["r", "t"]
#["r", "h"]
#["r", "d"]
#["r", "a"]

str.scan(reg) do |val1, val2|
  p val1 + "-" + val2
end

#"r-a"
#"r-t"
#"r-h"
#"r-d"
#"r-a"
