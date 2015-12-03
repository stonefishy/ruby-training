#using normal way
hash = Hash.new("ruby")
p hash["a"] 		#=> "ruby"

#using block
hash = Hash.new do |hash, key|
	hash[key] = key.upcase
end

p hash["a"]			#=> "A"
p hash["B"]			#=> "B"

#using fetch method
hash = Hash.new do |hash, key|
	hash[key] = key.upcase
end

p hash.fetch("a", "abc")			#=> "abc"