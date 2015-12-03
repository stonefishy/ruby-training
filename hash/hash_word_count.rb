file = ARGV[0]
words_count = Hash.new(0)

File.open(file) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |word|
      words_count[word] += 1
    end
  end
end

words_count.sort { |a, b|
  a[1] <=> b[1]
}.each do |key, val|
  puts "#{key} : #{val}"
end
