dir = Dir.open(ARGV[0])
    while name = dir.read
    p name
    end
    dir.close
