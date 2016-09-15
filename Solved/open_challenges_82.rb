# ARMSTRONG NUMBERS
# An Armstrong number is an n-digit number that is equal to the sum of the n'th powers of its digits. Determine if the input numbers are Armstrong numbers

File.open(ARGV[0]).each_line do |line|
  digits = line.chomp.split("")
  power = digits.length

  value = 0
  digits.each do |digit|
    value += digit.to_i ** power
  end

  puts value == digits.join("").to_i ? "True" : "False"
end
