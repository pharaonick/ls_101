# Write a method that takes an Array of numbers and then returns 
# the sum of the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.

=begin

input: array of numbers
  - includes at least one num; no need to vaidate
output: sum of each leading subsequence

iterate through array adding all elements from index 0 to current element

el[0] + el[0..1] + el[0..2] .. el[0..-1]

initialize running total var
iterate through array with index
  - increment total by sum of arr[0..i]
=end

def sum_of_sums(arr)
  total = 0
  arr.each_with_index do |num, idx|
    total += arr[0..idx].reduce(:+)
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35