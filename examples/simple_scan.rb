pattern = Regexp.new(ARGV[0])
file_name = ARGV[1]
count = 0

File.open(file_name) do |file|
	file.each_line do |line| 
		if line =~ pattern
			print line
			line.scan(pattern) do |scan|
				count +=1 if scan =~ pattern
			end
		end
	end
	puts "count: #{count}"		
end