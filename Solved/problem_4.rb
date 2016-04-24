#Write a program which determines the sum of the first 1000 prime numbers.

def sum_of_primes_upto(l)
  primes = primes_upto(l)
  sum = 0
  primes.each do |prime|
    sum += prime
  end

  sum
end

def primes_upto(n)
  primes = []
  nums = []

  2.upto(7920) do |n|
    nums << n
  end

  i = 0
  while i < nums.size
    primes << nums[i]

    j = i + 1
    while j < nums.size
      if nums[j] % nums[i] == 0
        nums = nums - [nums[j]]
      end

      j += 1
    end

    i += 1
  end

#  p primes.size
  primes
end

puts sum_of_primes_upto(1000)
