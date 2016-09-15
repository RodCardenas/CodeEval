# N MOD M
# Given two integers N and M, calculate N Mod M (without using any inbuilt modulus operator).

File.open(ARGV[0]).each_line do |line|
  nums = line.chomp.split(",")

  n = nums[0].to_i
  m = nums[1].to_i

  dividend = n / m
  remainder = n - m * dividend

  puts remainder
end
