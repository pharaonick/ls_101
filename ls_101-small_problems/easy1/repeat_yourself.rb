# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

# input: string, positive integer
# output: integer lots of string
# rules: integer must be positive

# test cases (only deal with happy cases)
# 'string' * 5  => string string string string string
# 'string' * 0  => re-input positive integer
# 'string' * -4 => re-input positive integer
# 'string' * 'another string' => do we need to validate input?

# data structures: strings

# algorithm
# pseudo code

# formal pseudo code
# given a string (my_str) and a positive integer (my_int)
# SET counter = 1
# WHILE counter <= my_int
#   PRINT my_str
#   counter + 1
# END


def repeat_loop(string, number)
  puts "Please enter a positive integer" if number <= 0
  counter = 1
  while counter <= number
    puts string
    counter += 1
  end
end

repeat_loop('hi there', 0)


# more Ruby style...
# given a string (my_str) and a positive integer (my_int)
# PRINT my_str my_int.times
# END

def repeat_times(string, number)
  number.times { puts string }
end

repeat('yo', 4)