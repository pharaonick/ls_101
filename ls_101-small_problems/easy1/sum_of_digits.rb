# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# input
# positive integer

# output
# sum of integer's digits

# rules 
# no need to validate...
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# test cases
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# data strucs
# integer - array - integer

# code
# split integer into digits and add to array
# iterate through array using #inject
# return value

# START
# given a positive, non-zero integer
# convert integer to string
# SPLIT integer into digits (delimited by ''), SET to array
# ITERATE through array and convert strings to integers .TO_I
# call SUM on array
# RETURN value
# END

def sum(integer)
  integer.to_s.chars.map(&:to_i).sum
end

# using inject, for reminder of how it works
def sum(integer)
  array = integer.to_s.chars.map(&:to_i)
  array.inject { |running_total, el| running_total + el }
end

# KEEP CHAINING IT! ********
def sum(integer)
  integer.to_s.chars.map(&:to_i).inject { |running_total, el| running_total + el }
end

# OR, even shorter:
def sum(integer)
  integer.to_s.chars.map(&:to_i).inject(:+)
end

# challenge: do it without loop constructs
# split integer into digits array (via string) e.g. ['1','5','3','11']
# x = array.length
# total = 0
# x.times
#   pop off the last element, convert to integer, and add to total

# START
# given positive, non-zero integer
# convert integer to string
# SPLIT integer into digits (''), SET to array
# SET repetitions = array.length
# SET total = 0
# repetitions.times do
#   string_digit = array.pop
#   total += string_digit.to_i
# end

def sum(integer)
  digits_array = integer.to_s.chars
  sum = 0

  digits_array.length.times { sum += digits_array.pop.to_i }

  sum
end


# REFACTORED TO ^
# def sum(integer)
#   digits_array = integer.to_s.chars
#   repetitions = digits_array.length
#   total = 0

#   repetitions.times do
#     string_digit = digits_array.pop
#     total += string_digit.to_i
#   end

#   total
# end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


# COMMUNITY SOLUTIONS

# # without using to_s or reduce
# def sum(integer)
#   digits = []
#   num = integer

#   until num <= 0
#     remaining, digit = num.divmod(10)
#     digits.unshift(digit)
#     num = remaining
#   end

#   total = 0
#   digits.each { |digit| total += digit }
#   total
# end

# # Without using divmod:

# def sum(integer)
#   digits = []
#   num = integer

#   last_digit = num % 10
#   loop do
#     digits << last_digit
#     num = (num - last_digit) / 10
#     last_digit = num % 10
#     break if last_digit == 0
#   end

#   total = 0
#   digits.each {|digit| total += digit}
#   total
# end

# # using recursion
# def sum(int)
#   if int.to_s.length == 2
#     (int / 10) + (int % 10)
#   else
#     sum(int / 10) + (int % 10)
#   end
# end

# # and another recursion
# def sum (num, sum_var= 0)
#   num_str = num.to_s
#   array = num_str.split('')
#   sum_var += array.pop.to_i
#   if array.empty?
#     return sum_var
#   end
#   sum(array.join.to_i, sum_var)
# end

# # and again
# def sum(integer)
#     recursion_caller(integer, 0)
# end

# def recursion_caller(integer, sum)
#   if integer < 10
#     return sum + integer
#   else
#     sum += integer % 10
#     recursion_caller(integer / 10, sum)
#   end
# end
