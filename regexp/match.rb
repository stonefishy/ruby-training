#using =~ symbol to matched the specify String, return the position of
#matched string, otherwise return nil.

reg = /R..y/
str = "regexp of Ruby"

matched = reg =~ str
puts matched        #=> 10

unmatched = reg =~ "test"
p unmatched         #=> nil

if matched
  puts "matched"
else
  puts "unmatched"
end
