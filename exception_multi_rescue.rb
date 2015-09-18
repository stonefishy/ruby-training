def multi_rescue 
	begin
		yield
	rescue NameError, NoMethodError => ex
		puts ex.class
	rescue ZeroDivisionError
		puts $!.class
	rescue 
		puts $!.class
	end
end

multi_rescue do 
	1 / 0
end

multi_rescue do
	val.size
end

multi_rescue do 
	val = 4
	sqrt(val)
end