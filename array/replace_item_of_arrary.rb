# collect/map
ary = [1, 2, 3]
ary1 = ary.collect do |item|
    item*2
end

p ary1

ary2 = ary.map do |item|
    if item % 2 == 0
        0
    else
        1
    end
end

p ary2

# fill
p [1, 2, 3].fill(0)			#=> [0, 0, 0]
p [1, 2, 3].fill(0, 1)		#=> [1, 0, 0]
p [1, 2, 3].fill(0, 0, 2)		#=> [0, 0 ,3]
p [1, 2, 3].fill(0, 1..2)		#=> [1, 0, 0]

ary = [1, 2, 3]
ary.fill(0)
p ary

# flatten/flatten!
ary = [1, [2, 3], [4, [5, 6]]]
p ary.flatten		#=> [1, 2, 3, 4, 5, 6]

# reverse/reverse!
ary = [1, 2, 3]
p ary.reverse		#=> [3, 2, 1]

# sort/sort!
ary = [4, 9, 5]
p ary.sort			#=> [4, 5, 9]
ary.sort! { |i, j|
	i % 3 <=> j % 3
}
p ary 				#=> [9, 4, 5]

p [2, 4, 3, 1].sort_by { |i| -i }  #=> [4, 3, 2, 1]

