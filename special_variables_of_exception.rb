begin
	1 / 0
rescue
	puts $!.class
	puts $!.message
	puts $!.backtrace
	puts $@
end

