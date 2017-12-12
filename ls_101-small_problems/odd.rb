# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. 
# You may assume that the argument is a valid integer value.


# input: one valid integer
# output: return true if valid integer is odd
# rules: assume argument is valid integer; cannot use Integer#odd? or Integer#even?


# test cases:
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true


# data structures: n/a


# pseudo code:
# given one valid integer
# calculate modulus of integer / 2
# if 1, return true

# formal pseudo code:
# START
# given one valid integer (num)
# RETURN true if num % 2 == 1


# code:

# def is_odd?(num)
#   num % 2 == 1 ? true : false
# end

# we do not the conditional because this statement will return true or false anyway

# def is_odd?(num)
#   num % 2 == 1
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

#without knowing modulo

# def is_odd_no_modulo?(number)
#   float = number / 2.0
#   float != float.to_i.to_f 
# end

def is_odd_no_modulo?(number)
  float = number / 2.0
  if float == float.to_i.to_f
    puts "#{number} is even."
  else
    puts "#{number} is odd."
  end
end

is_odd_no_modulo?(2)    # => false
is_odd_no_modulo?(5)    # => true
is_odd_no_modulo?(-17)  # => true
is_odd_no_modulo?(-8)   # => false
is_odd_no_modulo?(0)    # => false
is_odd_no_modulo?(1)    # => true
is_odd_no_modulo?(-1)   # => true

# puts is_odd_no_modulo?(2)    # => false
# puts is_odd_no_modulo?(5)    # => true
# puts is_odd_no_modulo?(-17)  # => true
# puts is_odd_no_modulo?(-8)   # => false
# puts is_odd_no_modulo?(0)    # => false
# puts is_odd_no_modulo?(1)    # => true
# puts is_odd_no_modulo?(-1)   # => true

# using Integer#remainder
# START
# given one valid integer, int
# IF int.remainder(2) == 1 RETURN true

# def is_odd_using_remainder(int)
#   int.remainder(2).abs == 1
# end

# puts is_odd_using_remainder(2)
# puts is_odd_using_remainder(5)
# puts is_odd_using_remainder(-17)
# puts is_odd_using_remainder(-8)
# puts is_odd_using_remainder(0)
# puts is_odd_using_remainder(7)
# puts is_odd_using_remainder(1)
# puts is_odd_using_remainder(-1)




