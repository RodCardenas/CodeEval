lines = File.readlines(ARGV[0])

lines.each do |line|
  args = line.split(",")
  str = args[0].chomp
  char = args[1].chomp

  idx = str.reverse.index(char)

  if idx.nil?
    puts -1
  else
    idx = str.length - idx - 1
    puts idx
  end
end
