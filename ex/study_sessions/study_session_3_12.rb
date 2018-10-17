# 1
# input: array of six strings
# each string is three animal names and a number
# output: total winnings

# if each animal is the same, you win that amount
# sum the amount

# iterate over array
# split by space
# if el 1 == 2 == 3, add value to accumulator

# def scratch(ticket)
#   sum = 0

#   ticket.each do |line|
#     line_arr = line.split
#     sum += line_arr[3].to_i if (line_arr[0] == line_arr[1] && line_arr[1] == line_arr[2])
#   end
  
#   sum
# end

# def scratch(lottery)
#   amount_won = 0
#   lottery.each do |ticket|
#     an1, an2, an3, bonus = ticket.split
#     if an1 == an2 && an1 == an3
#       amount_won += bonus.to_i
#     end
#   end
#   amount_won
# end


# p scratch([
#     "tiger tiger tiger 100",
#     "rabbit dragon snake 100",
#     "rat ox pig 1000",
#     "dog cock sheep 10",
#     "horse monkey rat 5",
#     "dog dog dog 1000"
#     ]) # == 1100 

# ---------------------------------------------

# 2

# Given an array of integers, return indices of the two numbers 
# such that they add up to a specific target.

# You may assume that each input would have exactly one solution, 
# and you may not use the same element twice.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# input: array integers, int target
# output: array of two indices repping the index of the elements who add up to target
# rules: only one solution ==> no repeated el
# cannot use same el twice

# 2+7, 2+11, 2+15 --- arr[0] + arr[1],  + arr[2], + arr[3]
# 7 + 11, 7 + 15 --- arr[1] + arr[2], + arr[3]

# i = 1
# arr[0] + arr[i] , i += 1, until i == arr.size

# j = 2
# arr[1] + arr[j], j += 1, until j == arr.size

# etc


# [2, 7, 11, 15].each do |el1|
#   [2, 7, 11, 15].each do |el2|


# My solution
# def add_me(arr, target)
#   arr.each_with_index do |el1, idx1|
#     arr.each_with_index do |el2, idx2|
#       next if idx2 <= idx1
#       return [idx1, idx2] if el1 + el2 == target
#     end
#   end
# end

# add_me([2, 7, 11, 15], 9) == [0, 1]



# C solution

# input: array, target (integer)
# output: indices of two elements that when combined == target

# rules:
#   - only each each element once
#   - only one solution possible

# algorithm:
#   - iterate through array adding 2 different numbers together
#   - check the sum against the target & return INDICES of both nums if they match
#   - keep iterating until first num == array.size - 1
#   - array[0] + arr[1] .... array[0] + array[-1]
#   - array[1] + arr[0], arr[1] + arr[2]
#   - adding array elemnts together unless the index is the same
#   - for the current number, 
#       - iterate through each of the other array numbers (indices 0..-1) combining the 2 and checking against target
#       - 


# def two_sum(array, target)
#   first = 0
#   loop do
#     second = 0
#     loop do
#       unless first == second
#         if array[first] + array[second] == target
#           return [first, second]
#         end
#       end
#       second += 1
#       break if second == array.size
#     end
    
#     first += 1
#   end
# end
    
# p two_sum([2, 11, 7, 15], 9) == [0, 2]

# F solution
# def two_sum(nums, target)
#   indicies = []
#   start = 0
#   tail = 1
#   loop do
#     if nums[start] + nums[tail] == target
#         indicies << start << tail
#         break
#     end
#     tail += 1
#     if tail == nums.size
#       start += 1
#       tail = start + 1
#     end
#     break if start == nums.size - 1
#   end
#   indicies
# end

# ---------------------------------------------

# 3

# def hashlife(array)
#   hash = {}
#   array.each_with_index do |el, idx|
#     if idx.even?
#       hash[array[idx+1]] = array[idx] 
#     end
#   end
#   hash.map do |string, length|
#      # string = string.dup
#      # string.slice!(0, length) 
#      # string.prepend("#"*length)
#     string[0..length] = '#' * length
#   end
# end


# def hashlife(array)
#   hash = {}

#   array.each_with_index do |el, idx|
#     next if idx.odd?
#     hash[array[idx + 1]] = el
#   end
 
#   hash.map do |str, num|
#     '#' * num + str[num..-1]
#   end
# end

# def hashlife(arr)
#   nums, strs = arr.partition { |el| el.is_a?(Integer) }
#   nested_arr = strs.zip(nums)

#   nested_arr.map { |str, num| '#' * num + str[num..-1] }
# end

# hashlife([3,"ketchup",1,"fraud",2,"store"]) == ["###chup", "#raud", "##ore"]
# hashlife([2,"candy",1,"fat",2,"poop"]) == ["##ndy", "#at", "##op"]
# hashlife([1,"rat",2,"foolish",2,"gorillas"]) == ["#at", "##olish", "##rillas"]


# ---------------------------------------------

# 4
# c = b + a

# a = b
# b = c

# long and ugly way

def solve(n)
  result = []
  a = '0'
  b = '01'

  if n == 0
    return '0'
  elsif n == 1
    return '01'
  end

  count = 1
  while count < n 
    c = b + a
    result << c
    a = b
    b = c
    count += 1
  end

  result.last
end

# cool way...
# 01, 010
# 010, 01001
# 01001, 01001010

def solve(n)
  a = '0'
  b = '01'
  
  return '0' if n == 0
 
  (n - 1).times { a, b = [b, (b + a)] }
  
  b
end

solve(0) == '0'
solve(1) == '01'
solve(2) == '010'
solve(3) == '01001'
solve(5) == '0100101001001'



























