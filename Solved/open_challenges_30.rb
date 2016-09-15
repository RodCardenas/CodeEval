# Set Intersection
# You are given two sorted list of numbers (ascending order). The lists themselves are comma delimited and the two lists are semicolon delimited. Print out the intersection of these two sets.

File.open(ARGV[0]).each_line do |line|
  lists = line.split(";")

  nums = []
  lists.each do |list|
    nums << list.split(",").map(&:to_i)
  end

  intersection = []
  nums[0].each do |num|
    intersection << num if nums[1].include?(num)
  end

  print intersection.join(",")
  puts ""
end
