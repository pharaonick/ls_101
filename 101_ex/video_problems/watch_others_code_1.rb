# def prime?(num)
#   return false if num == 1
#   (2..num - 1).none? { |n| num % n == 0 }
# end

# # to be clear about precedence, you could put 
# # (2..(num - 1))

# p prime(3)
# p prime(7)
# p prime(8)
# p prime(1)
# p prime(100)

# def select_primes(arr)
#   arr.select do |el|
#     prime?(el)
#   end
# end

# def count_primes(arr)
#   count = 0
#   arr.each do |el|
#     count += 1 if prime?(el)
#   end
#   count
# end

# arr.count { |el| prime?(el) }

#---

# puts "enter int greater than 0"
# int = gets.chomp.to_i
# puts "Enter 's' for sum, 'p' for product"
# calc = gets.chomp

# if calc == 's'
#   puts "the sum is #{(1..int).sum}."
# elsif calc == 'p'
#   puts "the product is #{(1..int).inject(:*)}."
# else
#   puts "I knew I should have validated your input..."
# end

#
#
#
#----------- Watched 3/25 3/26 (above notes from earlier) ----------------
#
#
#

# 1
# Write a method to determine if integer is a prime.
# Don't use Prime class.

=begin

input: int
  - can it be 0, negative, need to validate?
output: true or false based on if int is a prime

prime cannot be exactly divided by any number
except itself or 1
0 and 1 are not primes
2 is

for each num from 2 to one less than `int`
  if int % num == 0 it means `int` can be divided
    exactly by that num and so is therefore not a prime

1. construct range from 2..int - 1
2. iterate through range, dividing int by i
3. return false if any int % i == 0
4. else method should return true
5. guard clause for int < 2

=end

# def is_prime?(int)
#   return false if (2..int - 1).any? { |num| int % num == 0 }  
#   int < 2 ? false : true
# end

# refactor
def is_prime?(target)
  return false if target < 2
  (2..target - 1).none? { |num| target % num == 0 }  
end

# p is_prime?(3) == true
# p is_prime?(4) == false

# write a method that will take an array of numbers and return only primes
=begin

input: array of numbers
output: array of numbers from initial array that are prime nums
  - empty array if none are prime

iterate through array and select any numbers that are primes...

=end

def select_primes(possible_primes)
  possible_primes.select { |num| is_prime?(num) }
end

# p select_primes([1, 2, 3, 4]) == [2, 3]
# p select_primes([4, 6, 8, 10]) == []


=begin

Write a method that will take an array of numbers and return the number
of primes in the array

input: array of numbers
  - all types? 
output: number of primes in initial array

=end

# def count_primes(numbers)
#   numbers.count { |num| is_prime?(num) } 
# end

# as manual loop
def count_primes(numbers)
  primes = 0
  count = 0

  # loop do 
  #   primes += 1 if is_prime?(numbers[count])
  #   count += 1
  #   break if count >= numbers.length
  # end

  numbers.length.times { |i| primes += 1 if is_prime?(numbers[i]) }

  # etc ...

  primes
end

# p count_primes([1, 2, 3, 4]) == 2
# p count_primes([4, 6, 8, 10]) == 0

#####
# 2

# Write prog that asks user to enter integer > 0
# then asks if user wants to determine sum or product
# of all nums between 1 and integer

=begin

Request integer > 0. Need to validate? Save as variable.
Ask if want to sum or product. Need to validate? 
If sum
  - 
If product
  - 

int = 5. Sum = 15. 1+2+3+4+5 = 15 ... call reduce(:+) on the relevant range
int = 6. Product = 120. 1*2*3*4*5*6 = 120 ... 
HMMMMM discrepancy in test cases given... sum is inclusive range and product exclusive. Clarify.
For these purposes will assume inclusive. 

=end

# puts "Hi please enter an integer greater than 0"
# int = gets.chomp.to_i
# # assume no validation needed
# # (if it were we could do the to_i.to_s trick
# # or use regexp)

# calculation = nil
# loop do
#   puts "Enter 's' to compute the sum, 'p' to compute product"
#   calculation = gets.chomp.downcase
#   break if ['s', 'p'].include?(calculation)
# end

# puts calculation == 's' ? (1..int).reduce(:+) : (1..int).reduce(:*)

#####
# 3

# Write a method that combines two arrays passed in as arguments
# and returns a new array that contains all elements from both array arguments
# with the elements taken in alteranation
# Assume both input arrays are non-empty & have same no. of elements

=begin

input: 2 arrays
  - not empty, same no. elements
  - edgies: nil elements... (should make no difference)
output: NEW array that interleaves each el from the args

-- easiest way is just to zip them up then flatten...

=end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# do it manually!

def interleave(arr1, arr2)
  results = []

  arr1.each_with_index do |el, i|
    results << el << arr2[i]
    # results << el << arr2[arr1.index(el)] ## if you wanted to do it without index as block param
  end

  results
end

# can also use Integer#times and use that index

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']











