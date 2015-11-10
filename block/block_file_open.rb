file = File.open("each_hash_data.rb")
file.each_line do |line|
	puts line
end
file.close

File.open("each_hash_data.rb") do |file|
	file.each_line do |line|
		puts line
	end
end
