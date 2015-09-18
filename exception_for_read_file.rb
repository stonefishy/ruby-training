ltotal, wtotal, ctotal = 0, 0, 0

ARGV.each do |file|
	begin
		l, w, c = 0, 0, 0
		input = File.open(file)

		input.each_line do |line|
			l += 1
			c += line.size
			line.sub!(/^\s+/, "")			#=> 删除行首的空白符
			ary = line.split(/\s+/)
			w += ary.size
		end

		input.close
		printf("%d %d %d %s\n", l, w, c, file)

		ltotal += l
		wtotal += w
		ctotal += c

	rescue => ex
		print ex.message, "\n"
	end
end

printf("%d %d %d %s\n", ltotal, wtotal, ctotal, "total")
