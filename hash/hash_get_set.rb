#common set and get
hash = Hash.new
hash["a"] = "first"

p hash["a"]			#=> "first"
p hash["abc"]		#=> nil

#store and fetch
hash = Hash.new

hash.store("key", "ruby")

p hash.fetch("key")		#=> "ruby"

#hash.fetch("abc")		#=> KeyError

p hash.fetch("abc", "default value")	#=> "default value"

p hash.fetch("abc") {"a_"+ String.new("bc")}	#=>"a_bc"

#get all keys and values
hash = {"a"=>"b", "c"=>"d"}

p hash.keys		#=> ["a", "c"]
p hash.values	#=> ["b", "d"]
p hash.to_a		#=> [["a", "b"], ["c", "d"]]

#iterator key and value
hash = {"a"=>"b", "c"=>"d"}

hash.each_key do |key|
	puts key
end

hash.each_value do |value|
	puts value
end

hash.each do |key, value|
	puts "#{key}=>#{value}"
end