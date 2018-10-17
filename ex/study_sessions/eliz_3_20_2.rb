# In mathematics, factorials are special numbers. 
# They are usually written as a positive integer followed by an exclamation point, 
# e.g., 5! (which is read as "five factorial"). 
# 5! can be computed as:
# 5! -> 5 * 4 * 3 * 2 * 1 -> 120
# Similarly, 10! is 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1, or 3628800.

# Write a method that computes the factorial value for 
# some arbitrary positive integer, 
# and returns the sum of all of the digits in that number. 
# For this exercise, do not use reduce or inject.

=begin

input: positive integer
output: sum of digits in integer factorial
  - do not use reduce/inject

1. calculate int!
2. sum digits in the result

1. 
4! = 4 * 3 * 2 * 1

- set results var as 1
- for 1 up to int (idx = 1, 2, 3.. int)
  - results var = results variable * idx

=end

def factorial(num)
  result = 1
  1.upto(num) { |i| result *= i }
  num == 0 ? 0 : result 
end

def factorial_sum(int)
  factorial(int).digits.sum
end

p factorial_sum(4) == 6     # (4! -> 24 -> 2 + 4 -> 6)
p factorial_sum(10) == 27   # (10! -> 3628800 -> 3+6+2+8+8+0+0 -> 27)
p factorial_sum(50) == 216
p factorial_sum(100) == 648