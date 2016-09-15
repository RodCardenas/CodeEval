# CAPITALIZE WORDS
# Write a program which capitalizes the first letter of each word in a sentence.

File.open(ARGV[0]).each_line do |line|
  words = line.split(" ")
  words.each_with_index do |word, idx|
    words[idx] = word[0].upcase + word[1..-1]
  end
  puts words.join(" ")
end
