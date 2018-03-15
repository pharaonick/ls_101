# input: array, target value in array
# output: boolean (is target value in array)
# cannot use Array#include?

def include?(array, target)
  array.any? { |el| el == target }
end

# more brute force?
def include?(array, target)
  array.each { |el| return true if el == target }
  false
end

# easy LS solution
def include?(array, value)
  !!array.find_index(value)
end

# can also use count, of course
# brute force with a standard loop
# select with a check for size/emptiness...

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false