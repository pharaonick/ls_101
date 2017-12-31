# Pseudo code

# METHOD THAT RETURNS SUM OF TWO INTEGERS
# (think I made this too complicated by asking user for integers)

# Input: two integers. Need to validate?
# Output: integer
# Rules: plus

# Test cases:
# +ve integer + +ve integer
# +ve + -ve
# -ve + -ve
# non-integer => reprompt
# float => reprompt

# data structures: n/a

# algorithm:
# pseudo:
# get two integers from user
# validate integers; reprompt if necessary
# convert string to integer
# use + method to find sum of the two integers

# formal pseudo:
# START
# GET first integer from user
# SET first integer to integer1
# WHILE integer1 is not an integer, reprompt
# GET second integer from user
# SET second integer to integer2
# WHILE integer2 is not an integer, reprompt
# convert integer1 & integer2 from string to integer
# integer1 + integer2
# END

def integer_add
  
  integer1 = nil
  until integer1.to_i.to_s == integer1
    puts 'Enter your first integer'
    integer1 = gets.chomp
  end
  
  integer2 = nil
  until integer2.to_i.to_s == integer2
    puts 'Enter your second integer'
    integer2 = gets.chomp
  end

  p integer1.to_i + integer2.to_i

end

integer_add




