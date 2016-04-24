lines = File.readlines(ARGV[0])

lines.each do |line|
  words = line.split(" ")
  puts words.reverse.join(" ")
end
