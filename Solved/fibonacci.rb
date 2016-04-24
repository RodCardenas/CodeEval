nums_strs = File.readlines(ARGV[0])

nums_strs.each do |num_str|
  num = num_str.chomp.to_i

  fibs = []
  i = 0

  until fibs.length == num + 1
    if fibs.empty?
      fibs.push(0)
    elsif fibs.length == 1
      fibs.push(1)
    else
      fibs[i] = fibs[i - 1] + fibs[i - 2]
    end
    i += 1
  end

  puts fibs[num]
end
