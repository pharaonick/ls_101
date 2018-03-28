# input: array of six strings
# each string is three animal names and a number
# output: total winnings

# if each animal is the same, you win that amount
# sum the amount

# iterate over the array
#   - split each element by space
#   - if elements at index 0 == 1 == 2, then add value of index 3 to_i into winnings accumulator

# def scratch(arr)
#   winnings = 0

#   arr.each do |line|
#     line = line.split
#     winnings += line[3].to_i if line[0] == line[1] && line [1] == line[2]
#   end
#   winnings
# end

# p scratch([
#     "tiger tiger tiger 100",
#     "rabbit dragon snake 100",
#     "rat ox pig 1000",
#     "dog cock sheep 10",
#     "horse monkey rat 5",
#     "dog dog dog 1000"
#     ]) # == 1100 

############

# Given an array of integers, return indices of the two numbers 
# such that they add up to a specific target.

# You may assume that each input would have exactly one solution, 
# and you may not use the same element twice.

=begin

2+7, 2+11, 2+15
7+11, ...

=end

def add_me(arr, target)
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      return [idx1, idx2] if num1 + num2 == target && idx2 > idx1
    end
  end
end

# p add_me([2, 7, 11, 15], 9) == [0, 1]

###############

given array of alternating num then string, hash out the num starting characters of following string

=begin

iterate through array with index
for each even element, the string at following index must be replaced with '###' * even value + value..-1

=end

def hashlife(arr)
  results = []

  arr.each_with_index do |el, idx|
    next if idx.even?
    results << "#" * arr[idx - 1] + el[arr[idx - 1]..-1]
  end

  results
end

# hashlife([3,"ketchup",1,"fraud",2,"store"]) == ["###chup", "#raud", "##ore"]
# hashlife([2,"candy",1,"fat",2,"poop"]) == ["##ndy", "#at", "##op"]
# hashlife([1,"rat",2,"foolish",2,"gorillas"]) == ["#at", "##olish", "##rillas"]



##############
# given that
# f0 = '0'
# f1 = '01'
# f2 = '010' = f1 + f0
# f3 = '01001' = f2 + f1

# You will be given a number and your task is to return the nth fibonacci string. 

=begin

f(n) = f(n - 1) + f(n - 2)

0 a = '0'
1 b = '01'
2 c = b + a

a = '0'
b = '01'
fib_str = b + a
a = b
b = fib_str
fib_str = b + a

=end

def solve(n)
  return '0' if n == 0
  return '01' if n == 1
  
  a = '0'
  b = '01'
  fib_str = b + a

  (n - 2).times do 
    a = b
    b = fib_str
    fib_str = b + a
  end

  fib_str
end

def solve(n)
  a, b = ['0', '01']

  (n - 1).times do |_|
    a, b = [b, b + a]
  end

  n == 0 ? '0' : b
end

# possibly not correct...! doesn't actually need to be array...
def solve(n)
  a, b = '0', '01'

  (n - 1).times do |_|
    a, b = b, b + a
  end

  n == 0 ? '0' : b
end

p solve(0) == '0'
p solve(1) == '01'
p solve(2) == '010'
p solve(3) == '01001'
p solve(5) == '0100101001001'
######

def fibonacci(n)
  seq = [1, 1]
  (n - 2).times do
    seq << seq[-1] + seq[-2]
  end 
  seq.last
end
















