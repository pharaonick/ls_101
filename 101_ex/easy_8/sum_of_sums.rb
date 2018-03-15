# input: array of at least one number
# output: sum of sums

def sum_of_sums(arr)
  sums = []
  total = 0

  arr.each do |num|
    total += num
    sums << total
  end

  sums.sum
end

# require 'pry'
# require 'pry-byebug'

# this isn't really an improvement...
def sum_of_sums(arr)
  sums = []

  sums << arr.inject(0) do |total, num|
    sums << total
    total + num
  end

  sums.sum
end

# LS solution uses 1.upto slice and inject!!!! try to figure it out...


# very elegant
def sum_of_sums arr
  result = 0
  arr.each_index { |index| result += arr[0..index].reduce(:+)  }
  result
end

def sum_of_sums(array)
  total = 0
  1.upto(array.length) do |n|
    total += array.first(n).reduce(:+)
  end
  total
end

#mind blown
def sum_of_sums(arr)
  arr.reverse.each.with_index(1).reduce(0) { |sum, (n, idx)| sum + n * idx }
end

# also see pete's solution, and zac's...
# lots of people using the fact that it's 3*3 + 5*2 + 2*1 ...

p sum_of_sums([3, 5, 2]) #== 21 #(3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== 36 #(1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35