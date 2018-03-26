
# =begin
# input: array of strings, int
# output: first longest string made up of int consecutive strings

# - return '' if:
#   - int <= 0
#   - returned string is length 0
#   - returned string is shorter than int


# mental model:
# -need to figure out the 2 longest consecutive strings
# NOOOOOOOOOOOOO NOT 2, INT

# str0, str1, str2, str3, str4

# - construct length variable
# - iterate through array, with index
# - add str.length to str.length of index + 1
# - if higher than current length value, replace
# - output it

# =end

# def longest_consec(arr, int)
#   longest = ''
#   return '' if int <= 0 


#   arr.each_with_index do |str, i|
#     if arr[i, int].join.length > longest.length
      
#       longest = arr[i, int].join
#     end
#   end
#   longest.length < int ? '' : longest
# end



# # # p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) #== "oocccffuucccjjjkkkjyyyeehh"
# # p longest_consec([], 3) # == ""
# # p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) #== "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
# # p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
# # p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
# # p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) #== ""
# # p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""



# PAY ATTENTION TO THE PROBLEM!!!!



# =begin
# input: array of strings, int
# output: first longest string made up of int consecutive strings

# - return '' if:
#   - int <= 0
#   - returned string is length 0
#   - returned string is shorter than int


# mental model:
# -need to figure out the 2 longest consecutive strings
# NOOOOOOOOOOOOO NOT 2, INT

# str0, str1, str2, str3, str4

# - construct length variable
# - iterate through array, with index
# - add str.length to str.length of index + 1
# - if higher than current length value, replace
# - output it

# =end

# def longest_consec(arr, int)
#   longest = ''
#   return '' if int <= 0 
#   return '' if int > arr.length

#   arr.each_with_index do |str, i|
#     if arr[i, int].join.length > longest.length
      
#       longest = arr[i, int].join
#     end
#   end
#   longest.length < int ? '' : longest
# end




# p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
# p longest_consec([], 3) == ""
# p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
# p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == "




# FAZ solution
# def longest_consec(arr, int)
#   longest = ''
#   return '' if int <= 0 
#   return '' if int > arr.length

#   arr.each_with_index do |str, i|
#     if arr[i, int].join.length > longest.length
      
#       longest = arr[i, int].join
#     end
#   end
#   longest.length < int ? '' : longest
# end

# def longest_consec(array, k)
#   return '' if array.empty? || k < 0 || k > array.size
#   strings = []
#   counter = 0
#   loop do
#     strings << array[counter, k].join("")
#     counter += 1
#     break if counter == array.size
#   end
#   strings.max_by { |string| string.size }
# end


# p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
# p longest_consec([], 3) == ""
# p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
# p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""






=begin
You are going to be given an array of integers. Your job is to take that array and find an index N where
the sum of the integers to the left of N is equal to the sum of the integers to the right of N.
If there is no index that would make this happen, return -1.
Let's say you are given the array {1,2,3,4,3,2,1}:
Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the
index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

input: array of ints
output: index N where sum of ints to left == sum to right
- return -1 if no index that makes this happen
- empty index counts as 0

model: for each index in the array, sum all elements up to index and compare to sum of all elements after index

idx0: value 0 vs 0..-1 (account for this by calling sum on array and discounting first)

idx1: 0 vs 2..-1
idx2: 0..1 vs 3..-1

- iterate over array, and for each EL, sum up all elements with lower index and compare to all elements with higher index
- if 0, return index of EL

=end

def find_even_index(arr)
  return 0 if arr[1..-1].inject(:+) == 0
  arr.each_with_index do |num, i|
    return i if arr[(0..i-1)].inject(:+) == arr[(i+1..-1)].inject(:+)
  end
  -1
end



p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == -1




