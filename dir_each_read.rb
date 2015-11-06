# open the current directory
current_dir = Dir.pwd
dir = Dir.open(current_dir)
dir.each do |name|
    p name
end
dir.close
