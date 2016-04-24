nums = File.readlines(ARGV[0])

sum = 0
nums.each do |num|
  sum += num.chomp.to_i
end

puts sum
