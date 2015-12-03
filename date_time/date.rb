#using date object, need to require "date" firstly
require "date"

d = Date.today
p d 				#=> <Date: 2015-11-13 ((2457340j,0s,0n),+0s,2299161j)>
p d.to_s 			#=> "2015-11-13"

p d.year			#=> 2015

p d.month			#=> 11

p d.day				#=> 13

p d.wday			#=> 5

p d.mday			#=> 13

p d.yday			#=> 317
