#using {}

hash1 = {"key1"=>"value1", "key2"=>"value2"}
p hash1["key1"]			#=> "value1"

hash2 = {key1:"value1", key2:"value2"}
p hash2[:key1]			#=> "value1"

#using Hash.new

hash1 = Hash.new
hash2 = Hash.new("ruby")

p hash1["key"]			#=> nil
p hash2["key"]			#=> "ruby"