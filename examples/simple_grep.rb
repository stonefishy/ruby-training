pattern = Regexp.new(ARGV[0])
file_name = ARGV[1]

File.open(file_name) do |file|
	file.each_line do |line|
		print line if line =~ pattern
	end
end