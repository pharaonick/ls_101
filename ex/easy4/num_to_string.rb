# Write a method that takes a positive integer or zero, 
# and converts it to a string representation.

# PROBLEM (incl input, output, rules)
# input: positive integer or zero
# output: string version of integer
# can't use standard conversion methods; do it oldskool by manipulating number


DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

# 4321 % 10 = 1 ... 1/1 = 1
# 4321 % 100 = 21 ... 21/10 = 2
# 4321 % 1000 = 321 ... 321/100 = 3
# 4321 % 10000 = 4321 ... 4321/1000 = 4

def integer_to_string(int)
  int_str = ''
  unit = 1

  loop do 
    unit *= 10
    digit = int % (unit) / (unit / 10)
    int_str += DIGITS[digit]
    
    break if int % unit == int
  end

  int_str.reverse
end


# DIVMOD DIVMOD DIVMOD DIVMOD!!!!

def integer_to_string(int)
  int_str = ''

  loop do
    int, remainder = int.divmod(10)
    int_str.prepend(DIGITS[remainder])

    break if int == 0
  end

  int_str
end


# EXAMPLES/TEST CASES
p integer_to_string(65) == '65'
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'


# lol can also save numbers to array and then join with ''

NUMS = {"0" => 0, "1" => 1, "2" => 2, "3" => 3,
        "4" => 4, "5" => 5,"6" => 6, "7" => 7,
        "8" => 8, "9" => 9}

def integer_to_string(int)
  int.digits.reverse.map { |digit| NUMS.key(digit) }.join
end

# can break it down into steps too, so prepend modulus then divide number to get 
# number for next iteration
DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def convert_to_str number
  string = ''
  loop do 
    string.prepend(DIGITS[number % 10])
    number = number / 10
    break if number == 0
  end
  string
end
