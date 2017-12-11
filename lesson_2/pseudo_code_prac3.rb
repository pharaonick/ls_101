# a method that takes an array of integers
# and returns a new array with every other element 

# input: array of integers
# output: array of integers using only even (or odd) index items from original array
# rules: n/a

# test cases (ignore edge cases for this exercise)
# [1, 2, 3, 4, 5, 6] => [1, 3, 5] OR [2, 4, 6]
# [1, 'two', 3, 4, 'five', 6] => reprompt? ignore strings?
# [1, nil, 2, 3, nil, 4, 5] => remprompt? ignore non-integer elements?
# [] => [] ?

# data structures: array, array

# algo 
# pseudo
# given an array of integers
# iterate through and assign every element with an even index to a new array

# pseudo formal
# START
# given an array of integers, arr 
# SET new_array = []
# iterate through arr using arr.each, where each element is represented by var num
# push num to new_array if arr.index(num) is even

# code

def every_other(arr)
  new_array = []
  arr.each do |num|
    new_array << num if arr.index(num).even?
  end
  p arr
  p new_array
end

my_array = [0, 14, 87, 4, 8, 64, 0, 1]

every_other(my_array)
