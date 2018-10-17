# Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

# You can modify the input array in-place.


# input:
#   - array of integers (can be negative. can contain duplicates)
# output:
#   - first missing POSITIVE integer in linear time & constant space

# rules:
#   - nums may be negative
#   - nums may duplicate
#   - modification of input array allowed
#   - if consecutive nums, return next positive int after sequence

# algorithm:
#   - determine the lowest, and highest numbers in the input arr
#   - create an array of all integers between the high/low nums
#   - iterate through the list of all nums
#       - if current number exists in input array, next
#       - if current number DOES NOT exist, and IS POSITIVE
#             return the number
#       - if all numbers in 'complete array' exist in input, they're consecutive
#             return arr[-1] + 1

def missing_int(input)
  low = input.min
  high = input.max
  all_nums = (low..high).to_a
  all_nums.each do |num|
    next if input.include?(num)
    return num if num > 0
  end
  (high + 1) > 0 ? (high + 1) : 1
 
end

p missing_int([3, 4, -1, 1]) == 2
p missing_int([4, 2, 0, 3]) == 1
p missing_int([1, 2, 0]) == 3
p missing_int([-4, -3, -2])


def missing_int(arr)
  result = (arr.min .. arr.max).reduce(0, &:+) - arr.reduce(0, &:+)
  result = arr.max + 1 if result == 0
  result
end




sort array
iterate through, skipping over any that are -ve
use index to check if there is a num between
index a and a+1
