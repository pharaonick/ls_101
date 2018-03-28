# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end




# input: positive integer
# output: array of digits - so digit needs to be turned into string
# rules: assume positive integer, so ignore edge cases (negative, float, string, nil)


# test cases:
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# data structures: array


# pseudo code:
# given a positive integer
# convert it into a string
# split the string into an array

# formal pseudo code (ruby style):
# START
# given a positive integer, integer
# SET integer_string as integer.to_s
# SPLIT integer_string by '' and SET the result as digit_array

# CODE RUBY STYLE

def digit_list(integer)
  integer_string = integer.to_s
  digit_array = integer_string.split('')
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)

# BUT we need an array of integers not strings. so...

def digit_list(integer)
  integer_string = integer.to_s
  digit_array = integer_string.split('')
  digit_array.map! { |digit| digit.to_i }
end

# could also be written as 
def digit_list(integer)
  integer.to_s.split('').map(&:to_i)
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)

# formal pseudo code (loop style):
# START
# given a positive integer, integer
# SET integer_string as integer.to_s
# SET counter to 0
# SET digit_array = []
# WHILE counter < integer_string length
#   PUSH integer_string[counter index] into digit_array

# CODE LOOP STYLE

def digit_list(integer)
  integer_string = integer.to_s
  counter = 0
  digit_array = []

  while counter < integer_string.length
    digit_array.push(integer_string[counter])
    counter += 1
  end
  digit_array.map! { |digit| digit.to_i }
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)


# LAUNCH SCHOOL SOLUTION BRUTE FORCE

def digit_list(number)
  digit_array = []
  loop do
    number, remainder = number.divmod(10) 
    digit_array.unshift(remainder)
    break if number == 0
  end
  digit_array
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)

# number.divmod(10) => divides number by 10 & returns array with 
# quotient set as number and remainder set as remainder
# adds remainder to front of digit_array
# loops until we are done with the units

# LAUNCH SCHOOL SOLUTION IDIOMATIC

def digit_list(number)
  number.to_s.chars.map(&:to_i)
  # chars converts string to array split by '' i.e. is short for str.each_char.to_a
  # &:to_i is short for |var| var.to_i
end


p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)




