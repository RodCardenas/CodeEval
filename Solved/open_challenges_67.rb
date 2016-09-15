# HEX TO DECIMAL
# You will be given a hexadecimal (base 16) number. Convert it into decimal (base 10).

File.open(ARGV[0]).each_line do |line|
  num = line.chomp

  puts Integer("0x" + num)
end
