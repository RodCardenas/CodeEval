lines = File.readlines(ARGV[0])
results = []

lines.each do |line|
  nums = line.split(" ")

  fizz = nums[0].to_i
  buzz = nums[1].to_i
  limit = nums[2].to_i

  result = []

  1.upto(limit) do |candidate|
    result << if candidate % fizz == 0 && candidate % buzz == 0
                "FB"
              elsif candidate % fizz == 0
                "F"
              elsif candidate % buzz == 0
                "B"
              else
                candidate
              end
  end

  results << result
end

results.each do |result|
  puts result.join(" ")
end
