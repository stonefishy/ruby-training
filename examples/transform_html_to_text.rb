require "open-uri"

url = "http://ruby-doc.org"
file_name = "ruby-doc.html"

File.open(file_name, 'w') do |file|
	text = open(url).read
	file.write text
end