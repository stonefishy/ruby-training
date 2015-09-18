pattern = Regexp.new ARGV[0]
file_name = ARGV[1]

max_matches = 10
matched = 0

file = File.open file_name
file.each_line do |line|
	if matched >= max_matches
		break		
	end

	if pattern =~ line
		matched += 1
		puts line		
	end
end
file.close