# Fibonacci sequence: (1, 1, 2, 3, 5, 8, 13, 21, ...)

# input: integer >= 2 -- first num in series with this many digits
# output: integer -- index of num
# - first Fib num (1) has index of 1

# def fib(iterations)
#   i = 1
#   j = 1
#   k = nil
#   index = 3

#   loop do 
#     k = i + j
#     i = j
#     j = k
#     index += 1

#     break if index > iterations
#   end
#   k
# end

# add each iteration to array and break when el.to_s.length = target



#LOOK INTO SPECIAL CASE WITH TARGET AS 1 OR 2...
# ALSO might be better written as while loop
# ALSO ALSO! you can use Integer#digits rather than calling to_s
def find_fibonacci_index_by_length(target)
  sequence = [1, 1]

  until sequence.last.to_s.length >= target
    sequence << sequence[-1] + sequence[-2]
  end
  sequence.index(sequence.last) + 1
end

# LS brute force approach similar to my initial thoughts but with index
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

# This is super clever and hundreds of times faster...though I don't get how the 
# 10**(digits-1) works...?

def find_fibonacci_index_by_length(digits)
  target_number = 10 ** (digits - 1)
  recent_nums = [1,1]
  idx = 2

  while recent_nums[1] < target_number
    num = recent_nums.reduce(:+)
    recent_nums.push(num).shift
    idx += 1
  end

  idx
end


p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847