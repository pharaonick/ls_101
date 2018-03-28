# Write a method that takes a positive integer or zero, 
# and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. 
# Your method should do this the old-fashioned way and 
# construct the string by analyzing and manipulating the number.

=begin

input: 0 or positive int
output: int as string
- cannot use any conversion methods in Ruby

so we can use an array as a lookup table
['0', '1', .. '9']

construct a results array
- get each digit into array as sep. element
  - divmod(10) the number, save num and remainder 4321.divmod(10) -> [432, 1]
  - push remainder to results array
  - call divmod(10) on new num
  - repeat until num is 0
- use lookup to convert to string
- join

=end

def integer_to_string(int)
  return '0' if int == 0

  digits_array = []
  lookup = %w[0 1 2 3 4 5 6 7 8 9]

  until int == 0
    int, remainder = int.divmod(10)
    digits_array.unshift(remainder)
  end

  digits_array.map { |int| lookup[int] }.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'