nums_strs = File.readlines(ARGV[0])

nums_strs.each do |num_str|
  digits = num_str.chomp.chars

  sum = 0
  digits.each do |digit|
    sum += digit.to_i
  end

  puts sum
end
