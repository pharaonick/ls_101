# PROBLEM (incl input, output, rules)
# Write a method that takes a String of digits, 
# and returns the appropriate number as an integer. 
# Cannot use string to_i, integer() etc
# Assume all characters numeric, don't worry about leading +-
# input: string or digits, ignore +/-
# output: integer

# iterate through string and map each character to its integer via a hash

# EXAMPLES/TEST CASES
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# DATA STRUCS
# hash lookup table
# {'1' => 1, '2' => 2, ...}
# array to store digits before converting to complete number

# ALGO (old skool)
# define character_mapping hash
# given input_string
# set empty digits_array
# set count to 0
# set break if count >= input_string
# set current_character = input_string[count]
# loop through input_string, adding the value for each character_mapping key to digits_array
# increment count
# end loop
# combine digits in digits_array using join

# CODE (with intent!)
# EXCEPT JOIN RETURNS A STRING...

# def string_to_integer(input_string)
#   character_mapping = {
#   '0' => 0,
#   '1' => 1,
#   '2' => 2,
#   '3' => 3,
#   '4' => 4,
#   '5' => 5,
#   '6' => 6,
#   '7' => 7,
#   '8' => 8,
#   '9' => 9
#   }
#   empty_digits = []
#   count = 0

#   loop do
#     break if count >= input_string.length

#     current_character = input_string[count]
#     empty_digits << character_mapping[current_character]
#     count += 1
#   end

#   empty_digits.join #### BUT THIS RETURNS A STRING...
# end

# more ruby style
 CHARACTER_MAPPING = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
  }

def string_to_integer(input_string)
  digit_array = input_string.chars.map { |el| el = CHARACTER_MAPPING[el] }

  multiplier = 1
  number = 0
  until digit_array.empty?
    number += (digit_array.pop * multiplier)
    multiplier *= 10
  end

  number
end

# # ls solution ************
def string_to_integer(input_string)
  digit_array = input_string.chars.map { |el| el = CHARACTER_MAPPING[el] }

  number = 0
  digit_array.each { |el| number = 10 * number + el }
  number
end

# # use inject? ludicrous but works!
def string_to_integer(input_string)
  digit_array = input_string.chars.map { |el| el = CHARACTER_MAPPING[el] }

  multiplier = 10 ** (digit_array.length)
  number = digit_array.inject(0) do |total, el|
    multiplier /= 10
    total + el * multiplier
  end
  number 
end

# # another complex inject!!
def string_to_integer(input_string)
  digit_array = input_string.chars.map { |el| el = CHARACTER_MAPPING[el] }

  numbers = []
  until digit_array.empty?
    numbers << digit_array.shift * (10 ** digit_array.length)
  end
  numbers.inject(:+)
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570

# FURTHER EXPLORATION: HEXADECIMAL TO DECIMAL CONVERSION
# e.g. hexadecimal_to_integer('4D9F') == 19871
# 15 * 16 ** 0 = 15
# 9 * 16 ** 1 = 144
# 13 * 16 ** 2 = 3328
# 4 * 16 ** 3 = 16384

 DIGIT_MAP = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9, 
  'A' => 10,
  'B' => 11,
  'C' => 12, 
  'D' => 13,
  'E' => 14,
  'F' => 15
  }

# ALGO
# map string to array of values via DIGIT_MAP e.g. [4, 13, 9, 15]
# map to array where each element * 16 ** (array length - 1)
#   - either via unshift, or setting power and looping
# inject to add array

def hexadecimal_to_integer(hex_string)
  decimal_digits = hex_string.chars.map { |el| el = DIGIT_MAP[el] }

  decimal_values = []
  until decimal_digits.empty?
    decimal_values << decimal_digits.shift * 16 ** decimal_digits.size
  end

  decimal_values.inject(:+)
end

p hexadecimal_to_integer('4D9F') == 19871
p hexadecimal_to_integer('95') == 149
p hexadecimal_to_integer('1D9') == 473
p hexadecimal_to_integer('80E1') == 32993
p hexadecimal_to_integer('10CE') == 4302
p hexadecimal_to_integer('0') == 0

# EASIER WAY TO DO A LOT OF THIS IS TO REVERSE THE ARRAY AND 
# ITERATE WITH_INDEX SO ELEMENT INDEX CAN BE USED AS THE EXPONENT


