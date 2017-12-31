# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. 
# If the boolean is false, the bonus should be 0.

# input: 
# positive integer, boolean

# output:
# integer >= 0 that reflects bonus

# rules:
# if true, bonus = salary/2
# if false, bonus = 0

# test cases:
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# data strucs:


# pseudo code:
# given positive integer and boolean
# if true, bonus = integer / 2
#   if false, bonus = 0

def calculate_bonus(salary, gets_bonus = true)
  gets_bonus ? add_commas_to_integer(salary / 2) : 0
end

# puts calculate_bonus(2800) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

def add_commas_to_integer(integer)
  reversed_digits = integer.to_s.chars.map(&:to_i).reverse
  reversed_digits.each_slice(3).map { |sl| sl.join }.join(',').reverse
end

puts calculate_bonus(2800)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)




