# Given a list of integers, write a function that returns the largest sum of non-adjacent numbers. 
# Numbers can be 0 or negative.
# For example, [2, 4, 6, 8] should return 12, since we pick 4 and 8. 
# [5, 1, 1, 5] should return 10, since we pick 5 and 5.

=begin
add each pair of numbers that are not adjacent
save result to array
return max value in array

2 + 6 (idx 0 + 2)
2 + 8 (0 + 3)
4 + 8 (1 + 3)

iterate through array adding el[0] to el[2], el[3] up to el[-1]
el[1] + el[3] .. el[-1]

for each element, add next element IF idx is two or more than current element
  save to array
  keep going till we reach the end
repeat for next element

  
=end

# def largest_sum(arr)
#   results = []
#   arr.each_with_index do |num1, idx1|
#     arr.each_with_index do |num2, idx2|
#       results << num1 + num2 if idx2 - idx1 >= 2
#     end
#   end
#   arr.empty? ? 0 : results.max
# end


# p largest_sum([2, 4, 6, 8]) == 12
# p largest_sum([5, 1, 1, 5]) == 10
# p largest_sum([2, 4, 6, 8, 9]) == 15
# p largest_sum([0, 4, 6, 8, 9]) == 15
# p largest_sum([0, 0, 0]) == 0
# p largest_sum([2, 4, 6, 8, -9]) == 12
# p largest_sum([]) == 0

# faz solutions

# input:
#   - list of integers
# output:
#   - largest sum of 2 non-adjacent numbers
# algo:
#   - iterate over each element in the array
#   - create variables that are assigned the beginning and ending index.
#     - beginning variable will be assigned 0
#     - ending variable will be assigned 1
#   - increment the ending index until it equals the size of the array
#     - then increment the beginning variable by 1 and then continue incrementing the ending index by beginning + 1
#     - then continue incrementing the ending index until it reaches the end and then increment the beginning variable
#     - such that it goes [0, 1] [0, 2] [0, 3] [0, 4], [1,2] [1, 3] .. [3, 4]
#   - initialize an variable named sums and only add array[beginning] and array[ending] variables if the difference between ending - beginning is greater than 1.
#   - return the largest number in the sum array object as the implicit return value
# def sum_of_nonadjacents(array)
#   start = 0
#   ending = 1
#   sums = []
#   loop do
#     difference = ending - start
#     sums << (array[start] + array[ending]) if difference > 1
#     ending += 1
#     if ending == array.size
#       start += 1
#       ending = start + 1
#     end
#     if start == array.size - 1
#       break
#     end
#   end
#   sums.max
# end



# def sum_of_nonadjacents(array)
#   sums = []
#   0.upto(array.size - 2) do |num1|
#     0.upto(array.size - 1) do |num2|
#       difference = num2 - num1
#       sums << array[num1] + array[num2] if difference > 1
#     end
#   end
#   sums.max
# end

require 'pry'
require 'pry-byebug'

# Charles solution
def sum_of_nonadjacents(arr)
  largest_sum = 0
  begin_idx = 0
  (arr.size-1).downto(2) do |end_idx|
    binding.pry
    while begin_idx < (end_idx - 1) 
      current_sum = arr[end_idx] + arr[begin_idx]
      largest_sum = current_sum if current_sum > largest_sum
      begin_idx += 1
    end
  end
  largest_sum
end
  
# V using #upto as the inner looping mechanism 
# missing some code? 
  
# def sum_of_nonadjacents(arr)
#   largest_sum = 0
#   (arr.size-1).downto(2) do |end_idx|
#     0.upto(end_idx - 2) do |begin_idx|
#       current_sum = arr[end_idx] + arr[begin_idx]
#       largest_sum = current_sum if current_sum > largest_sum
#     end
#   end
#   largest_sum
# end

p sum_of_nonadjacents([2, 4, 6, 8]) == 12
p sum_of_nonadjacents([5, 1, 1, 5]) == 10
p sum_of_nonadjacents([2, 4, 6, 8, 9]) == 15
p sum_of_nonadjacents([0, 4, 6, 8, 9]) == 15
p sum_of_nonadjacents([0, 0, 0]) == 0
p sum_of_nonadjacents([2, 4, 6, 8, -9]) == 12
p sum_of_nonadjacents([]) == 0



