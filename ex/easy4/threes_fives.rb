# Write a method that searches for all multiples of 3 or 5 
# that lie between 1 and some other number, 
# and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, 
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# PROBLEM (incl input, output, rules)
# - add all multiples of 3 and 5 between 1 and x (x is integer greater than 1)
# - input is integer x and output is the sum
# - need to de-dupe e.g. 15 is multiple of 3 and of 5 (so order is important?)
# - make sure if x is multiple that it is included in the sum

# - will need to collect multiples of 3 and 5, dedupe them, add them
# - fill array with 1 x 3, 2 x 3 etc until value is at/above x
# - repeat for 5s (deduped)


# EXAMPLES/TEST CASES
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33 (3 6 9 5 10)
# multisum(1000) == 234168
# multisum(15) == 60 (3 6 9 12 15 5 10)

# DATA STRUCS
# array to keep multiples in 


# ALGO
# SET target = integer x
# SET multiples_array = []
# SET count = 1
# SET result = 0
# LOOP result = count * 3, if result <= target, add to array and increase count by 1, else break
# reset count and loop and repeat for 5
# dedupe array using uniq
# call array sum method 
# (or... do it old skool with loop!)


# MUST BE QUICKER WAY OF DOING THIS USING INJECT OR SIMPLY ADDING 
# (good example of how having seen a similar problem before is problematic because 
#   leads you in certain direction that might not be optimal...)

# CODE (conscious!)

# could break into multiple methods, but seems pointless since such a bad solution anyway!
# def multisum(target)
#   multiples_array = []
#   count = 1
#   result = 0

#   loop do
#     result = count * 3
#     break if result > target
#     multiples_array << result
#     count += 1
#   end

#   count = 1
#   result = 0

#   loop do
#     result = count * 5
#     break if result > target
#     multiples_array << result
#     count += 1
#   end

#   multiples_array.uniq!
#   multiples_array.sum
# end

# refactored...
def array_of_multiples(multiple, target)
  multiples_array = []
  count = 1
 
  while count * multiple <= target
    multiples_array << count * multiple
    count += 1
  end

  multiples_array
end

def multisum(target)
  array_of_multiples(3, target).concat(array_of_multiples(5, target)).uniq.sum
end

# use better algo...
# PROBLEM (incl input, output, rules)
# - add all multiples of 3 and 5 between 1 and x (x is integer greater than 1)
# - input is integer x and output is the sum
# - need to de-dupe e.g. 15 is multiple of 3 and of 5 (so order is important?)
# - make sure if x is multiple that it is included in the sum

# - will need to collect multiples of 3 and 5, dedupe them, add them
# - fill array with 1 x 3, 2 x 3 etc until value is at/above x
# - repeat for 5s (deduped)

# add instead of multiply...

def increment(multiple, target)
  array = []
  count = multiple
  
  until count > target
    array << count
    count += multiple
  end

  array
end

def multisum(target)
  increment(3, target).concat(increment(5, target)).uniq.sum
end

# using times
def incr(multiple, target)
  array = []
  count = multiple

  (target / multiple).times do
    array.push(count)
    count += multiple
  end

  array
end

def multisum(target)
  incr(3, target).concat(incr(5, target)).uniq.sum
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33 (3 6 9 5 10)
p multisum(1000) #== 234168
p multisum(15) #== 60 (3 6 9 12 15 5 10)


# LS SOLUTION SO MUCH BETTER!
def multiple?(number, multiple)
  number % multiple == 0
end

def multisum(target)
  sum = 0

  1.upto(target) do |count|
    if multiple?(count, 3) || multiple?(count, 5)
      sum += count
    end
  end

  sum
end


# using inject

def multisum(target)
  (1..target).inject(0) do |total, el| 
    el % 3 == 0 || el % 5 == 0 ? total + el : total
  end
end


p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33 (3 6 9 5 10)
p multisum(1000) #== 234168
p multisum(15) #== 60 (3 6 9 12 15 5 10)

# two stage using inject
def multisum(num)
  full_range = (1..num).to_a
  multiples = full_range.select { |n| (n % 5).zero? || (n % 3).zero? }
  multiples.reduce(:+)
end

# one line version of the above
def multisum(num)
  (1..num).select { |num| (num % 3 == 0) || (num % 5 == 0) }.inject(:+)
end

def multisum(int)
  multiples = []
  int.times do |i|
    multiples << i.next if i.next % 3 == 0 || i.next % 5 == 0
  end
  multiples.uniq.sum
end

