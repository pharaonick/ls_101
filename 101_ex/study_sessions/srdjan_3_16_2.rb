# Given an array of numbers find if any 3 numbers inside of the array
# can be multiplied to get the maximum number in the array.
# If the number is used once it can't be used again. 
# If there are two same numbers then that number can be used 2 times.

=begin

input: array of nums
output: true if 3 nums multiplied together == max num in array
- num cannot be used more times than it appears

1. construct nested array of triplets
2. iterate through triplets, summing them up to see if any == initial_array.max

1. 
1, 2, 3, 4, 5, 6

1, 2, 3
1, 2, 4
1, 2, 5
1, 2, 6
1, 3, 4
1, 3, 5
1, 3, 6
1, 4, 5
1, 4, 6
1, 5, 6
2, 3, 4
2, 3, 5
...

12 3, 4, 5, 6
13, 4, 5, 6
14, 5, 6
15, 6
23, 4, 5, 6

- lock down index1 and index2, increment index3 and push each triplet to array
- lock down index1 and increment index2, lock these, combine with incrementing index3
- idx3 > idx2 && idx2 > idx1

=end

# def mult_of_three_nums(arr)
#   results = []

#   arr.each_with_index do |num1, idx1|
#     arr.each_with_index do |num2, idx2|
#       arr.each_with_index do |num3, idx3|
#         results << [num1, num2, num3] if idx3 > idx2 && idx2 > idx1
#       end
#     end
#   end
  
#   target = arr.max

#   results.any? { |triplet| triplet.reduce(:*) == target }
# end

# p mult_of_three_nums([1,2,3,4,5,6]) #== true
# p mult_of_three_nums([3, 8, 0, 9, 4, 2, 7]) #== false x
# p mult_of_three_nums([5, 3, 7, 9, 2, 51, 90]) #== true x
# p mult_of_three_nums([1, 1, 5, 7, 987, 3, 2]) #== true
# p mult_of_three_nums([2, 5, 8, 11, 32, 2]) #== true x
# p mult_of_three_nums([13, 3, 11, 56, 79, 2]) #== false x


##################################
# Write function scramble(str1,str2) that returns true if a portion of str1 characters 
# can be rearranged to match str2, otherwise returns false.
#
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
#
# Only lower case letters will be used (a-z). No punctuation or digits will be included.

=begin

input: str1, str2
output: true if str1 can be rearranged to match exactly str2, else false
  - only lowercase letters involved

- does str1 contain all the letters in str2
- does count of each char in str1 not exceed count of that char in str2

=end

def scramble(str1, str2)
  str2.chars.all? { |char| str1.include?(char) } && 
  str2.chars.none? { |char| str2.count(char) > str1.count(char) }
end


p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
p scramble('scriptingjava','jaaaaaaaaaaaaaaaavascript') == false

