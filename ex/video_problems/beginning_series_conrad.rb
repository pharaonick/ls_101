# # 1
# input: array of strings
# output: array of same string values with vowels removed

# - take an array of strings, and remove vowels from each string element

# - what if string is all vowels? (gonna assume empty string)

# iterate over array of strings (`arr`)
# for each string, replace vowel with empty character
#   return array with mutated strings... better to return new arr?

def kill_vowels(arr)
  arr.map do |el|
    el.gsub!(/[aeiou]/i, '')
  end
end

kill_vowels(%w[green yellow black white]) == %w[grn yllw blck wht]
kill_vowels(%w[green yellow ae white]) == %w[grn yllw  wht] # this is not the right syntax to rep array with empty str el

##########
# 2
Write a method that takes a string
and returns a boolean indicating whether this
string has a balanced no. of parentheses


def balancer(str)
  str.count('(') == str.count(')')
end

balancer('hi') == true
balancer('(hi') == false
balancer ('(hi)') == true

# bonus
# balancer(')hi(') == false
def balancer(str)
  paren_count = 0

  str.chars do |char|
    paren_count -= 1 if char == ')'
    paren_count += 1 if char == '('
    return false if paren_count < 0
  end 
  paren_count == 0
end

#############
# 3
# Write a method that takes two numbers
# and prints out all the primes between them, inclusive
# Do not use Ruby's prime class

# iterate through first to last, 
# printing out primes
# - need method to tell if something is a prime

def is_prime?(num)
  2.upto(num - 1) { |i| return false if num % i == 0 }
  num < 2 ? false : true 
end

def find_primes(first, last)
  (first..last).each { |num| p num if is_prime?(num) }
end

find_primes(3, 10) # => 3, 5, 7















