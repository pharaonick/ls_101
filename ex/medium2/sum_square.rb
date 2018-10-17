=begin

input: positive integer
output: (sum of 1..n) squared - sum of 1^2 + 2^2 ... n^2

2 parts:
  - find sum of 1..n. Square it.
  - construct array of squares of 1..n. Sum it.
  - find difference

=end

def square_of_sums(int)
  (1..int).inject(:+) ** 2
end

def sum_of_squares(int)
  (1..int).to_a.map { |i| i ** 2 }.sum
end

def sum_square_difference(int)
  square_of_sums(int) - sum_of_squares(int)
end

# in one method
def sum_square_difference(int)
  (1..int).inject(:+) ** 2 - (1..int).to_a.map { |i| i ** 2 }.sum
end

# Can also do as single loop where 1.upto(n) we increment the 
# two relevant variables (sum - which will need to be squared later - and sum_of_squares)


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150