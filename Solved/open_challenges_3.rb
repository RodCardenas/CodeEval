# Prime Palindrome
# where n < 1000

def is_prime?(num)
  return false if num % 2 == 0

  3.upto(Math.sqrt(num)) do |n|
    return false if num % n == 0
  end

  true
end

def is_palindrome?(num)
  digits = num.to_s.chars

  return true if digits == digits.reverse
  false
end

def is_prime_palindrome?(num)
  return true if is_palindrome?(num) && is_prime?(num)
  false
end

1000.downto(1) do |n|
  if is_prime_palindrome?(n)
    puts n
    break
  end
end
