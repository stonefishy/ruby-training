pattern = Regexp.new("(.{0, 10})(" + ARGV[0] + ")(.{0, 10})")
file_name = ARGV[1]
count = 0

File.open(file_name) do |file|
	file.each_line do |line|
		line.scan(pattern) do |str|
			count += 1
			puts "#{str[0]}<<#{str[1]}>>#{str[2]}"
		end
	end
end

puts "count: #{count}"