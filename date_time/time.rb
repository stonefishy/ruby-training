p Time.new			#=> print the current time. eg:  2015-11-12 17:15:00 +0800

sleep 1				#=> sleep 1 second

p Time.now 			#=> print the current time  eg:  2015-11-12 17:15:00 +0800

# access the attribute of the Time
time = Time.now

p time.year			#=> print the current year	eg: 2015

p time.month		#=> print the current month	 eg: 11

p time.day			#=> print the current day	eg: 12

p time.hour			#=> print the current hour  eg: 9

p time.min 			#=> print the current min 	eg: 47

p time.sec 			#=> print the current second	eg: 7

p time.usec			#=> print the current millisecond   eg:653444

p time.to_i			#=> print the second which from 1/1/1970 to now  eg: 1447379227

p time.wday			#=> print the which day of a week (note: 0 stand for Sunday) (eg: 5, Friday)

p time.mday			#=> print the which day of a month eg:13

p time.yday			#=> print the which day of a year (note: 1 stand for January 1) eg: 317

p time.zone			#=> print the time zone eg: "CST"

# create new Time with Time.mktime(year, month, day, hour, min, second)
time = Time.mktime(2015, 11, 11, 11, 11, 11)
p time 				#=> 2015-11-11 11:11:11 +0800

# the operation of the time object
time1 = Time.now
sleep 5
time2 = Time.new
p time1 < time2 	#=> true
interval = time2 - time1
p interval			#=> 5.004378

time1 = Time.mktime(2015, 11, 11, 11, 11, 11, 11)
time2 = time1 + 30
p time2				#=> 2015-11-11 11:11:41 +0800
p time2.to_s		#=> "2015-11-11 11:11:41 +0800"

# change to UTC time
p time1.utc 		#=> 2015-11-11 03:11:11 UTC

# change to local time
p time1.localtime	#=> 2015-11-11 11:11:11 +0800

#parse time from string, this need to require "time"
require "time"
p Time.parse("2015/11/11 11:11:11") #=> 2015-11-11 11:11:11 +0800


