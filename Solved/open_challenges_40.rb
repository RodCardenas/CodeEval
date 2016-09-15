# SELF DESCRIBING NUMBERS
# A number is a self-describing number when (assuming digit positions are labeled 0 to N-1), the digit in each position is equal to the number of times that that digit appears in the number.

File.open(ARGV[0]).each_line do |line|
  digits = line.chomp.split("")
  counts = Hash.new(0)

  digits.each do |digit|
    counts[digit] += 1
  end

  self_describing_number = 1
  digits.each_with_index do |digit, position|
    if counts[position.to_s] !=  digit.to_i
      self_describing_number = 0
      break
    end
  end

  puts self_describing_number
end
