def copy(from to)
	src = File.open(from)
	begin
		dst = File.open(to, 'w')
		data = src.read
		dst.write(data)
		dst.close
	rescue => ex
		print ex.message
	ensure
		src.close
	end
end