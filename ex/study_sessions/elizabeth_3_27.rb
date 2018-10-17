# # Write a method that takes one argument, a positive integer, and 
# # returns a string of alternating 1s and 0s, always starting with 1. 
# # The length of the string should match the given integer.

# def stringy(int)
#   str = ''
#   int.times { |i| i.even? ? str += '1' : str += '0'}
#   str
# end


# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# #####

# # Write a method that takes an array of strings, and returns an array of 
# # the same string values, except with the vowels (a, e, i, o, u) removed.

# iterate over arr of strings, constructing new array and swapping out vowels.

# def remove_vowels(arr)
#   arr.map { |str| str.gsub(/[aeiou]/i, '') }
# end

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# ######

# # Write a method named include? that takes an Array and a search value as 
# # arguments. This method should return true if the search value is in the array, 
# # false if it is not. You may not use the Array#include? method in your solution.

# def include?(arr, target)
#   arr.each { |el| return true if el == target }
#   false
# end


# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# #####

# # Write a method that takes a string argument and returns a new string
# # that contains the value of the original string with all consecutive duplicate
# # characters collapsed into a single character. Dont use squeeze

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''




# # Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# # You may assume that neither argument is an empty Array.

# # Examples:

# # input:
# #   - 2 arrays, each containing numbers

# # output:
# #   - NEW array containing every possible (2-element) product between both arrays

# # rules:
# #   - neither array is empty
# #   - return a new sorted array

# # algorithm:
# #   - initiliaze empty array to hold products `results`
# #   - iterate through arr1 and multiply every element of arr2 by the current element
# #       - 2*4, 2*3, 2*1, 2*2
# #       - 4*4, 4*3...
# #   - after each iteration, append the product the our results array
# #   - once iteration is complete, return `results` (call #sort on `results`)
    
# def multiply_all_pairs(arr1, arr2)
#   results = []
  
#   arr1.each do |n1|
#     arr2.each do |n2|
#       results << (n1 * n2)
#     end
#   end
  
#   results.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |sub_arr| sub_arr.inject(:*) }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]













