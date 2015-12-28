#IO.popen
pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

if /.gz$/ =~ filename
  file = IO.popen("gunzip -c #{filename}")
else
  file = File.open(filename)
end
file.close

#open("|command", mode)
filename = ARGV[0]
open("|gunzip -c #{filename}") do |io|
  io.each_line do |line|
    print line
  end
end
