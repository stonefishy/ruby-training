pattern = Regexp.new(ARGV[0])
file_name = ARGV[1]
count = 0

File.read(file_name).scan(pattern) do |s|
	count += 1
end

puts "count: #{count}"

