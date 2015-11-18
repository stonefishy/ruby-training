require "open-uri"

url = "http://ruby-doc.org"
file_name = "ruby-doc.html"

File.open(file_name, 'w') do |file|
	text = open(url).read
	file.write text
end

text_name = "ruby-doc.text"
html = File.read(file_name)

File.open(text_name, 'w') do |file|
	in_header = true
	html.each_line do |line|
		if in_header && /<body/ !~ line
			next
		else
			in_header = false
		end

		esc_line = line.gsub!(/<[^>]+>/, '')

		file.write line
		break if /<\/body/ =~ line
	end
end