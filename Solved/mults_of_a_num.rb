lines = File.readlines(ARGV[0])

lines.each do |line|
  nums = line.split(",")

  x = nums[0].chomp.to_i
  n = nums[1].chomp.to_i

  mult = n

  while mult < x
    mult += n
  end

  puts mult
end
