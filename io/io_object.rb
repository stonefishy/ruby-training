$stdout.print "output something from $stdout\n"
STDERR.print "output something from $stderr\n"

if $stdin.tty?
  print "stdin is a tty\n"
else
  print "stdin is not a tty\n"
end

File.open("tty.rb") do |io|
  while line = io.gets
    print line
  end
end

io = File.open("tty.rb")
while line = io.gets
  line.chomp!
  print line
end
p io.eof?     #=> true
io.close      #=> close file
p io.closed?   #=> true

#readlines
io = File.open("tty.rb")
ary = io.readlines
io.close
ary.each do |line|
  line.chomp!
  print line
end

#io.getc, io.ungetc

File.open("hello.txt", 'w') do |io|
  io.write("Hello Ruby")
end
File.open("hello.txt") do |io|
  p io.getc       #=> H
  io.ungetc('H')
  p io.gets       #=> Hello Ruby
end

File.delete("hello.txt")

$stdout.puts "hi", "hello", "hey"

$stdout.putc('H')       #=> H
$stdout.putc('Hello')   #=> H
$stdout.putc('\n')

size = $stdout.write("Hello")
p size

File.open("hello.txt", 'w') do |io|
  io.write("Hello Ruby")
end
File.open("hello.txt") do |io|
  p io.read(5)      #=> Hello
  io.pos = 0
  p io.gets         #=> Hello Ruby
end

File.open("hello.txt", 'w') do |io|
  io.write("Hello Ruby")
end
File.open("hello.txt") do |io|
  p io.read(5)      #=> Hello
  io.seek(-5, IO::SEEK_CUR)
  p io.gets         #=> Hello Ruby
  io.seek(0, IO::SEEK_SET)
  p io.gets         #=> Hello Ruby
  io.seek(-4, IO::SEEK_END)
  p io.gets         #=> Ruby
end

File.delete("hello.txt")
