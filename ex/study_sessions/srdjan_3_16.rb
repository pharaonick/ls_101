# # Given an array of numbers find if any 3 numbers inside of the array
# #   can be multiplied to get the maximum number in the array.
# #   If the number is used once it can't be used again. 
# #   If there articletwo same numbers then that number can be used 2 times.

# # input: array of integers
# # output: boolean repping whether 3 ints can be x together to get max
# #  -- cannot use same number twice, unless it's 2 elements (i.e. cannot have same index)

# # - Find max number in array, that is our target
# # - Iterate through array, for each iteration adding num + next two indices to array
# #(multiplying each number by all other numbers that do not have the same index but then how track when have hit 3? would need another var...)
# # - Find product of all els within each array and test vs target


# # MY INITIAL ATTEMPT
# # MISSES A TON OF STUFF FROM TRIPLETS ARRYA, PLUS PROBLEM OF NIL

# # def mult_of_three_nums(arr)
# #   triples = []
# #   arr.each_with_index do |num1, idx1|
# #     arr.each_with_index do |num2, idx2|
# #       triples << [arr[idx1], arr[idx2 + 1], arr[idx2 + 2]]
# #     end
# #   end
# #   triples
# #   target = arr.max

# #   triples.each do |triplet|
# #     return true if triplet.inject(:*) == target
# #   end
# #   false
# # end

# # SECOND ATTEMPT...
# # can we use Array#product? (no...!)

# # [1, 2, 3, 4, 5, 6, 7]

# # 12 3
# # 12 4
# # 12 5
# # 12 6
# # 12 7

# # 13 4
# # 13 5
# # 13 6
# # 13 7


# [1, 2, 3, 4, 5, 6, 7]
# num, idx
# 1, 0
# 1, 0
# 1, 0

# 1, 2, 3       

# ((idx3 > idx2) && (idx2 > idx1))


def mult_of_three_nums(arr)
  triples = []

  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      arr.each_with_index do |num3, idx3|
        #checks to make sure we are not accessing an index outside of the array
        length = ((idx2 + 1) < arr.length && (idx3 + 2) < arr.length) ? true : false

        if length && ((idx3 + 2) > (idx2 + 1) && (idx2 + 1) > idx1)
          triples << [arr[idx1], arr[idx2 + 1], arr[idx3 + 2]]
        end
      end
    end
  end

  target = arr.max
  triples.any? { |triplet| triplet.inject(:*) == target }
end

# # def triplets(arr)
# #  triples = []

# #   arr.each_with_index do |num1, idx1|
# #     arr.each_with_index do |num2, idx2|
# #       arr.each_with_index do |num3, idx3|
      
# #         length = ((idx2 + 1) < arr.length && (idx3 + 2) < arr.length) ? true : false

# #         if length && ((idx3 + 2) > (idx2 + 1) && (idx2 + 1) > idx1)
# #           triples << [arr[idx1], arr[idx2 + 1], arr[idx3 + 2]]
# #         end

# #       end
# #     end
# #   end
# #   p triples
# # end


p mult_of_three_nums([1,2,3,4,5,6]) #== true
p mult_of_three_nums([3, 8, 0, 9, 4, 2, 7]) #== false x
p mult_of_three_nums([5, 3, 7, 9, 2, 51, 90]) #== true x
p mult_of_three_nums([1, 1, 5, 7, 987, 3, 2]) #== true
p mult_of_three_nums([2, 5, 8, 11, 32, 2]) #== true x
p mult_of_three_nums([13, 3, 11, 56, 79, 2]) #== false x


# # IAN SOLUTION
# def mult_of_three_nums(array)
#   max = array.max
#   subsets = array.permutation(3).to_a

#   subsets.any? do |subset|
#     subset.reduce(:*) == max
#   end
# end

# # ANNIE
# def mult_of_three_nums(arr)
#   arr.combination(3).to_a.any? { |subarr| subarr.reduce(:*) == arr.max }
# end

# # combination method will return only unique combinations
# # whereas permutations will return [1, 2, 3] and [3, 2, 1] etc -- returns all 
# # so combinations is more efficient in this case



# # IAN SECOND SOLUTION
# # [1,2,3,4,5,6]
# # 1,2,3
# # 1,2,4
# # 1,2,5
# # 1,2,6
# # 1,3,4
# # 1,3,5
# # 1,3,6
# #
# # Ok, so we iterate through. At each iteration:
# #   Get pairs starting with the next number after the currrent
# #     - Iterate from one plus the second number to the end
# #     - At each iteration, return current outer number, current second level, current third level
# #
# #

# def get_subsets(array)
#   subsets = []

#   array.each_with_index do |num, idx|
#     (idx + 1).upto(array.length - 2) do |idx2|
#       (idx + 2).upto(array.length - 1) do |idx3|
#         subsets << [num, array[idx2], array[idx3]]
#       end
#     end
#   end
#   subsets
# end


# # SRDJAN SOLUTION **********************

# =begin
# - You can do similar thing with two elements, three elements, four elements etc.
# - This solution is with three elements as that is the requirement :

# - first iteration is over index of first number
# - second iteration is over index of second number
# - third iteration is over index of third number

# Essentially, we are locking first and second number and iterating over third one
# When this finishes we are moving second number by 1 place, first is still the same and iterating again over third element
# We are repeating this step until we go to the last index of second element
# Then we move first one by one place and repeat the step

# Conditions that need to be met :
#    - index of third element needs to be higher always than index of second and first one
#    - index of second element needs to be higher than index of first one


# Example with 5 numbers in array

# [1,2,3,4,5]

# we start iteration and index of first num is 0  --> arr[0] gives us number 1   ---> index of first element can only go as high as -3 since number 3 is the last number for first element that is possible
# we start another iteration for index of second_number and the first index is 1 (first element is 2), the last possible index is -2
# finally we start third and final iteration for index of third element which starts from index 2 (arr[2] is 2) and the last possible index is -1 which is the element 5

# our first subarray is [arr[0], arr[1], arr[2]]
# first and second index are locked and we move third one [arr[0], arr[1], arr[3]]
# first two still locked and we move third again [arr[0], arr[1], arr[4]] now third element is 5 and we have come to the end
# next step is to move index of element two by one [arr[0], arr[2], arr[2]] since the indexes of second and third elements are the same we skip this subarray
# moving to next one [arr[0], arr[2], arr[3]] and next one after that [arr[0], arr[2], arr[4]]
# again we are at the end so we move second index by 1 ocne again [arr[0], arr[3], arr[2]] now index of third element is less than index of second one so we skip this step, and we skip next one when they are the same
# so we finally get to [arr[0], arr[3], arr[4]] which is the end for second element so we now change index of first element
# [arr[1], arr[1], arr[2]] index of second element is the same as index of first one which is no-go so we skip this one
# [arr[1], arr[1], arr[3]] again the same problem and [arr[1], arr[1], arr[3]] have the same problem as well as [arr[1], arr[1], arr[4]]

# Now we move second element [arr[1], arr[2], arr[2]] but index of third element and index of second one are now the same so again we move third element
# [arr[1], arr[2], arr[3]] , no problem here and we add this subbaray... same for [arr[1], arr[2], arr[4]] third element is at the end so we move second one
# [arr[1], arr[3], arr[2]]   third one less then second no go and same is for [arr[1], arr[3], arr[3]] since now they are the same so the only added is [arr[1], arr[3], arr[4]]

# Finally in last iteration we start with [arr[2], arr[1], arr[2]] --- do you understand why?
# Many combinations will now be no-go until we get to [arr[2], arr[3], arr[4]] which is final combination
# =end

# def mult_of_three_nums(arr)
#   subarr = [] # looks like this isn't getting used?
#   max = arr.max
#   0.upto(arr.length - 3) do |first_num|
#     1.upto(arr.length - 2) do |second_num|
#       2.upto(arr.length - 1) do |third_num|
#         return true if ((arr[first_num] * arr[second_num] * arr[third_num] == max) && (third_num > second_num) && (second_num > first_num))
#       end
#     end
#   end
#   return false
# end




# QUESTION 2

# Write function scramble(str1,str2) that returns true if a portion of str1 characters 
# can be rearranged to match str2, otherwise returns false.
#
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
#
# Only lower case letters will be used (a-z). No punctuation or digits will be included.

# input: 2 strings
#   - only lowercase letters, no punctuation or digits
# output: boolean
#   - is part of str1 an anagram of str2?
#   - in other words, is every letter in str2 present in str1?

# iterate over each character in str2 and check if it is in str1. All must be present for `true`

# needed second condition to make sure stuff like str2 as 'javascriptaaaaa' doesn't pass
def scramble(str1, str2)
  str2.chars.all? { |char| str1.include?(char) && str2.count(char) <= str1.count(char) }
end

scramble('rkqodlw','world') == true
scramble('cedewaraaossoqqyt','codewars') == true
scramble('katas','steak') == false
scramble('scriptjava','javascript') == true
scramble('scriptingjava','javascript') == true
