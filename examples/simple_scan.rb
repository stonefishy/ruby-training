pattern = Regexp.new(ARGV[0])
file_name = ARGV[1]
count = 0

File.open(file_name) do |file|
	file.each_line do |line| 
		if line =~ pattern
			line.scan(pattern) do |scan|
				count +=1 if scan =~ pattern
			end
			print line.gsub(pattern) { |str|
				"<<#{str}>>"
			}
		end
	end
	puts "count: #{count}"		
end