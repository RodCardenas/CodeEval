# Multiplication Tables
# Print out the grade school multiplication table upto 12*12.

1.upto(12) do |num|
  1.upto(12) do |num2|
    printf("%4s", num * num2)
  end
  puts ""
end
