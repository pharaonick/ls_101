# https://www.codewars.com/kata/multiples-of-3-or-5/train/ruby

# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
# Note: If the number is a multiple of both 3 and 5, only count it once.

=begin

- sum all unique multiples of 3 and 5 below the target num

1. intialize array to hold multiples
2. iterate from 1 to one less than target
  - push num to array if divisible exactly by 3 or by 5
  - call uniq
3. sum array

=end

def solution(target)
  (1..target - 1).select { |num| num % 3 == 0 || num % 5 == 0 }.uniq.sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
p solution(1) == 0