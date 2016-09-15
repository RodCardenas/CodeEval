# Happy Numbers
# A happy number is defined by the following process. Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers.

def transform_number(num)
  digits = num.to_s.chars

  value = 0
  digits.each do |digit|
    value += digit.to_i ** 2
  end

  value
end

File.open(ARGV[0]).each_line do |line|
  num = line.chomp.to_i

  happy_number = 1
  seen_values = [num]
  value = num
  until value == 1
    value = transform_number(value)

    if seen_values.include?(value)
      happy_number = 0
      break
    else
      seen_values << value
    end
  end

  puts happy_number
end
