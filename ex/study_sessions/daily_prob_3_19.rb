# Given an array of integers, find the first missing positive integer 
# in linear time and constant space. 
# In other words, find the lowest positive integer that does not exist in the array. 
# The array can contain duplicates and negative numbers as well.

# For example, the input [3, 4, -1, 1] should give 2. 
# The input [1, 2, 0] should give 3.

# You can modify the input array in-place.

# in: array of ints, including neg / duplicates
# out: lowest positive int not in array (0 is not a positive int)

# given an array of integers, we have to sort it in ascending num order
# so we can identify the lowest positive integer not in the array
#   - this could be in between elements 
#   - or at the end of the array

# algo
# 1. find min el in array (`arr`), assign to `minimum`
# 2. find max el in array, assign to `maximum`
# 3. iterate through integers (`i`) between `minimum` and `maximum` 
#   - check to see if `i` is present in `arr`
#   - return first `i` not included in `arr`
#   - if all are included, return value of `max` + 1


def missing(arr)
  minimum = arr.min
  maximum = arr.max

  minimum.upto(maximum + 1) do |i|
    return i unless arr.include?(i) || i < 1
  end  
end


missing([3, 4, -1, 1]) == 2
missing([1, 2, 0]) == 3