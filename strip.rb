file_name = ARGV[0]

file = File.open file_name
file.each_line do |line|
	next if /^$/ =~ line
	next if /^#/ =~ line

	puts line
end
file.close