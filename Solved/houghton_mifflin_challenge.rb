# CHALLENGE DESCRIPTION:
#
# Write a program which prints all the permutations of a string in alphabetical order. We consider that digits < upper case letters < lower case letters. The sorting should be performed in ascending order.
#
# INPUT SAMPLE:
#
# Your program should accept a file as its first argument. The file contains input strings, one per line.
lines = File.readlines(ARGV[0])

lines.each_with_index do |line,idx|
  lines[idx] = line.chomp
end

perms = []

lines.each_with_index do |line,idx|
  perms[idx] = line.chars.permutation.to_a
end

perms.each_with_index do |perm_ar,idx|
  perm_ar.each_with_index do |perm,idx|
    perm_ar[idx] = perm.join("")
  end

  perm_ar.sort!

  str = ""
  perm_ar.each do |perm|
    str += perm + ","
  end
  puts str[0..-2]
end
