# Write a method that takes one argument, an array containing integers, 
# and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive integers.

# input: array of positive integers

# output: average of those integers

# rules: array = positive integers, never empty. use integer division so no need to convert to float

# test cases (should print true):
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# data strucs:
# array, number

# pseudo code (oldskool)
# given an array of integers
# set a variable equal to array[0] & counter to 1
# loop through array, adding array[index] to variable and increasing counter by 1
# divide variable by array length


# formal pseudo code (oldskool):
# START
# given an array of integers, array
# SET sum = 0 (makes it easier to track iteration than setting to first value of array)
# SET count = 0
# WHILE count < array.length
#   add array[count] to sum
#   count + 1
# PRINT sum / array.length


# code (oldskool)

def average(array)
  sum = 0
  count = 0

  while count < array.length
    sum += array[count]
    count += 1
  end

  sum.to_f / array.length # convert sum .to_f to avoid integer division
end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40


# pseudo code (ruby style)


# formal pseudo code (ruby style):


# # code (ruby style)
def average(array)
  sum = 0
  array.each { |el| sum += el }
  sum.to_f / array.length
end

# # # puts average([1, 5, 87, 45, 8, 8]) == 25
# # # puts average([9, 47, 23, 95, 16, 52]) == 40

# # # OR

def average(array)
  array.sum.to_f / array.length
end

# # puts average([1, 5, 87, 45, 8, 8]) == 25
# # puts average([9, 47, 23, 95, 16, 52]) == 40

# # LS solution using Enumerable#inject

def average(array)
  total = array.inject { |accumulator_var, el| accumulator_var + el }
  total / array.size.to_f
end

puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40

# Can also write using symbol as argument:
array.inject(:+)

# Code to validate array
arr.is_a?(Array) && arr.all? { |value| value.is_a?(Integer) && value > 0 }
