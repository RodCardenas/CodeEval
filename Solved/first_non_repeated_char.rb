words = File.readlines(ARGV[0])

words.each do |word|
  letters_cnt = Hash.new(0)

  word.chomp.chars.each do |ch|
    letters_cnt[ch] += 1
  end

  non_rep_ltrs = letters_cnt.select{ |k,v| v == 1}

  positions = {}

  non_rep_ltrs.each do |ltr, cnt|
    positions[ltr] = word.chomp.index(ltr)
  end

  smallest_idx = nil
  smallest_idx_ltr = nil

  positions.each do |ltr,pos|
    if smallest_idx.nil? || pos < smallest_idx
      smallest_idx = pos
      smallest_idx_ltr = ltr
    end
  end

  puts smallest_idx_ltr
end
