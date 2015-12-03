#checking whether the specifies hash object has a key
hash = {"a" => "b", "c"=> "d"}

p hash.key?("a")    #=> true
p hash.key?("x")    #=> false
p hash.has_key?("c")  #=> true
p hash.include?("a")  #=> true
p hash.member?("x")   #=> false

#checking whether the specifies hash object has a value
hash = {"a"=>"b", "c"=>"d"}

p hash.value?("a")        #=> true
p hash.has_value?("x")    #=> false

#the size of the hash object
hash = {:a => "b", :c => "d"}

p hash.length   #=> 2
p hash.size   #=> 2

#checking whether the hash object is empty
hash = {:a=>"b"}
p hash.empty?     #=> false

hash = Hash.new
p hash.empty?     #=> true

#delete key and value
hash = {:a => "b"}
p hash[:a]    #=> "b"

hash.delete(:a)
p hash[:a]    #=> nil

hash = {:a => "b"}
p hash.delete(:x) { |key| "no #{key} in this hash object"}   #=>"no x in this hash object"

hash = {:a => "b", :c => "d"}
p hash.delete_if {|key, val| key == :a }     #=> {:c=>"d"}
p hash.delete_if {|key, val| key == :b }     #=> {:c=>"d"}

hash = {:a => "b", :c => "d"}
p hash.reject! {|key, val| key == :a}       #=> {:c=>"d"}
p hash.reject! {|key, val| key == :b}       #=> nil

#clear the hash object
hash = {a:"b", c:"d"}
p hash.size     #=> 2

hash.clear
p hash.size     #=> 0

# the key of the hash object
hash = Hash.new
key1 = 1
key2 = 1.0

p key1 == key2      #=> true

hash[key1] = "ruby"
p hash.key?(key1)     #=> true
p hash.has_key?(key2)   #=> false
