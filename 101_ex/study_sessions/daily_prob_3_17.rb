# This problem was asked by Uber.

# Given an array of integers, return a new array such that 
# each element at index i of the new array is the product of all the numbers 
# in the original array except the one at i.

# For example, if our input was [1, 2, 3, 4, 5], 
# the expected output would be [120, 60, 40, 30, 24]. 
# If our input was [3, 2, 1], the expected output would be [2, 3, 6].

# clarify edgies: empty array, negatives, 0

=begin
  
array -> NEW array
each element = product of all other elements except the one at current index
- multiply all together excluding current index
- OR
- multiply all integers together, divide by value at current index

1. find product of all elements in ORIGINAL_ARRAY, set to PRODUCT
2. iterate over ORIGINAL_ARRAY
  - for each element, push PRODUCT / current value to new array

=end


def arr_product(arr)
  product = arr.reduce(:*)
  arr.map { |el| product / el }
end

arr_product([1, 2, 3, 4, 5]) == [120, 60, 40, 30, 24]
arr_product([3, 2, 1]) == [2, 3, 6]


# Follow-up: what if you can't use division?
def arr_product(arr)
  arr.map do |el|
    arr.select { |selector| arr.index(selector) != arr.index(el) }.reduce(:*)
  end
end

arr_product([1, 2, 3, 4, 5]) == [120, 60, 40, 30, 24]
arr_product([3, 2, 1]) == [2, 3, 6]

# This was the inject approach I was thinking of...
def test(arr)
  arr.map do |el|
    arr.inject(1) do |memo, el2|
      next memo if arr.index(el2) == arr.index(el)
      memo * el2
    end
  end
end


test([1, 2, 3, 4, 5]) == [120, 60, 40, 30, 24]
test([3, 2, 1]) == [2, 3, 6]


# m 1
# el 1
# 1
# m1
# el2
# 2
# m 2
# 3
# 6
# m 6
# el 4
# 24
# m 24
# el 5
# 120



