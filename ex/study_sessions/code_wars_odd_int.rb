# Given an array, find the int that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

=begin

input: array of integers
  - need to validate?
output: the integer that appears an odd number of times
  - there will only be one

count the number of times each element appears until we find one that appears an odd number of times

iterate through the array
for each element, call count on the array and pass that element as an argument -> count for that element
  return el if count is odd
else return false

=end

def find_it(arr)
  arr.each do |el|
    return el if arr.count(el).odd?
  end
  nil
end



p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])# == 5)
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5])#, -1)
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])#, 5)
p find_it([10])#, 10)
p find_it([1,1,1,1,1,1,10,1,1,1,1])#, 10)