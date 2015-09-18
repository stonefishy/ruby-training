def read_file(file_name)
	file = File.open(file_name)
	file.each_line do |line|
		print line
	end
end
