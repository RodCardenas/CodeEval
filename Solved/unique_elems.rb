lines = File.readlines(ARGV[0])

lines.each do |line|
  nums = line.chomp.split(",")

  puts nums.uniq.join(",")
end
