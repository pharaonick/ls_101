# be able to manipulate arrays and hashes very fluently. 
# For example, an exercise might be 
# "reverse an array without using the built-in reverse method", or 
# "select the element out of the array if its index is a fibonacci number", or 
# "write a method to determine if a word is a palindrome, without using the reverse method", etc.

# # fib

# input: array
# output: element whose index is a fib num 

# - multiple matches?

# fib seq: 1 1 2 3 5 8 13 ...
# a + b = c
# a = b 
# b = c

# need method to determine if a num is a fib
# pass all indices to fib helper method
# return el of index that returns true

# to determine if a num is a fib, we need to construct an array of the fib seq
# ending when we hit the num or a num above it

# REFACTOR THIS...!
def is_fib?(num)
  sequence = [1, 1]
  a = 1
  b = 1

  return true if num == 1

  loop do
    c = a + b
    sequence << c
    break if c >= num
    a = b 
    b = c
  end

  sequence.last == num ? true : false
end

# could possibly refactor this too!
def is_fib?(target)
  return true if target == 1
  a = 1
  b = 1

  loop do
    c = a + b
    return true if c == target
    break if c > target
    a = b 
    b = c
  end

  false
end

# iterate through array, passing each element index to is_fib?
# if is_fib? then return el


def output_els_with_fib_index(arr)
  matching_els = []
  arr.each_with_index do |el, i|
    matching_els << el if is_fib?(i)
  end
  matching_els
end

# if actually selecting...
def select_els_with_fib_index(arr)
  arr.select do |el|
    is_fib?(arr.index(el))
  end
end


#refactoring fib...
# [a, b] -> [b, b + a]
# [0, 1] -> [1, 1] -> [1, 2] -> [2, 3] -> [3, 5]



# a = 0
# b = 1

# a, b = [b, b + a]


def is_fib?(target)
  a = 0
  b = 1

  loop do
    return true if b == target
    a, b = [b, b + a]
    break if b > target
  end

  false
end

