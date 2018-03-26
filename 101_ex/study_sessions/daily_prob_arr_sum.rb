# Given an array of numbers, return whether any two sums to K.
# For example, given [10, 15, 3, 7] and K of 17, return true since 10 + 7 is 17.

# input: array of ints, target
# output: boolean
#   - do two nums in array sum to target?
#     - only positive ints in array???
#     - can we use repeated nums (i.e. if 2 present twice)??


# iterate through array, adding idx[0] to idx[1], idx[2] until end of array
# repeat for idx[1]
# return true if sum == target

# 10 + 15
# 10 + 3
# 10 + 7

# 15 + 3
# 15 + 7

# 3 + 7

# for index 0 up to index of penultimate element
#   add index 1 up to index of final element
#   making sure the second index is always greater than the first

def arr_sum(arr, target)
  0.upto(arr.size - 2) do |idx1|
    1.upto(arr.size - 1) do |idx2|
      return true if arr[idx1] + arr[idx2] == target && idx2 > idx1
    end
  end
  false
end

arr_sum([10, 15, 3, 7], 17) == true
arr_sum([10, 15, 3, 7], 4) == false
arr_sum([10, 15, 3, 7, 7, 7, 7], 17) == true
arr_sum([10, 15, 3, 7], 0) == false
arr_sum([0, 0, 0], 0) == true
arr_sum([], 17) == false






