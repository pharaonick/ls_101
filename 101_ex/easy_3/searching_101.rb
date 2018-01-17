# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not the 6th number 
# appears amongst the first 5 numbers.

# input:
# 6 numbers

# output:
# string: whether the last number is among the first 5

# rules:
# (validate as an extra challenge?)

# example:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# data strucs:
# array to store the input numbers

# pseudo code:
# INPUT LOOP
# SET count as 1
# SET numbers as []
# UNTIL count > 5
# PRINT 'enter number <count>'
# PUSH number to numbers array
# count +1
# END INPUT LOOP
# PRINT enter final number
# SET as target
# PRINT the number <target> <IF array.include?... does/does not) appear in array


# LS solution calls #to_i but don't really see why needed
# count = 1
# numbers = []

# until count > 5
#   puts "Enter number #{count}."
#   numbers.push(gets.chomp)
#   count += 1
# end

# puts "Enter your final number."
# target = gets.chomp

# includes = numbers.include?(target)

# puts "The number #{target} #{includes ? "does" : "does not"} appear in #{numbers}."

# using 5.times do is easiest way to loop this



# # this (v) is virtually impossible to validate I would think!
# puts "Enter 6 numbers separated by spaces."
# numbers = gets.chomp.split

# target = numbers.pop

# if numbers.include?(target)
#   puts "The number #{target} does appear in #{numbers}."
# else
#   puts "The number #{target} doesn't appear in #{numbers}."
# end


# COOL WAY TO GET THE CORRECT ENDING 'ST' 'ND' ETC Could also be saved in an array
def ordinal(n)
  case n % 10
   when 1 then 'st'
   when 2 then 'nd'
   when 3 then 'rd'
   else 'th'
  end
end


input_numbers = []

5.times do |n|
  print "Enter the #{n+1}#{ordinal(n+1)} number: "
  input_numbers << $stdin.gets.chomp.to_i
end

print "Enter the last number: "
last_number = $stdin.gets.chomp.to_i

if input_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{input_numbers.inspect}"
else
  puts "The number #{last_number} does not appear in #{input_numbers.inspect}"
end



# check this one out...
require 'active_support/inflector'
include ActiveSupport::Inflector

def valid_integer?(user_input)
  user_input == user_input.to_i.to_s
end

def get_numbers
  numbers = []

  while numbers.length < 6
    if numbers.length < 5
      print "==> Enter the #{ordinalize(numbers.length + 1)} number: "
    else
      print "==> Enter the last number: "
    end

    number = gets.chomp
    valid_integer?(number) ? (numbers << number.to_i) : (puts "Invalid entry.")
  end

  numbers
end

def last_in_first_five?(arr)
  arr.first(5).include?(arr.last)
end

numbers = get_numbers

if last_in_first_five?(numbers)
  puts "The number #{numbers.last} appears in #{numbers.first(5)}."
else
  puts "The number #{numbers.last} does not appear in #{numbers.first(5)}."
end






