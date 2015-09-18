language = ["Perl", "Python", "Ruby", "Javascript"]

puts "The example of break:"

language.each_with_index do |lan, index|
	if index == 2
		break
	end

	p [index + 1, lan]
end


puts "The example of next:"

language.each_with_index do |lan, index|
	if index == 2
		next
	end

	p [index + 1, lan]
end


puts "The example of redo:"

index = 0
language.each do |lan|
	index = index + 1

	if index == 2
		redo
	end

	p [index, lan]
end



