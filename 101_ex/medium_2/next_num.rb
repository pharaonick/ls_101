=begin

input: integer
  - can it be 0 or negative?
output: next featured number greater than input integer
  - error message if there is none

featured number:
  - multiple of 7
  - odd
  - no repeated digits -> max 9876543210

model:
figure out next featured num after `int` argument
- featured_number method
- pass each number after arg into featured_number method and 
  - return first one
  - return error if there is none

featured_number method
- return false unless odd & multiple of 7
- return false if repeated digit
  - compare all digits to unique digits
    - if == then number has no repeated digits
- return true otherwise

=end

# CAN'T USE DIGITS BECAUSE OF THE WAY IT ORDERS ACCORDING TO SIGNIFICANCE
# NEED TO STRINGIFY BEFORE COMPARING
def featured_num?(num)
  num.odd? && num % 7 == 0 && num.to_s.chars.uniq == num.to_s.chars
end 

def featured(int)
  possible_featured = int + 1

  loop do # could write this as an until or while loop
    return possible_featured if featured_num?(possible_featured)
    possible_featured += 1
    break if possible_featured >= 9876543210
  end 
  "Sorry there is no possible featured number higher than your input number"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


