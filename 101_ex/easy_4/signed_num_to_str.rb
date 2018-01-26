DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  int_str = ''

  loop do
    int, remainder = int.divmod(10)
    int_str.prepend(DIGITS[remainder])

    break if int == 0
  end

  int_str
end

def signed_integer_to_string(int)
  abs_str = integer_to_string(int.abs)
  if int > 0
    "+#{abs_str}"
  elsif int < 0
    "-#{abs_str}"
  else
    abs_str
  end
end

# LS solution: just pass the negative of the negative!
def signed_integer_to_string(num)
  case num <=> 0
  when -1 then "-#{integer_to_string(-num)}"
  when 1 then  "+#{integer_to_string(num)}"
  else         integer_to_string(num)
  end
end

# # refactored so only make method call once but point...?!
def signed_integer_to_string(num)
  sign = num < 0 ? -1 : 1
  string = integer_to_string(sign * num)

  case num <=> 0
  when -1 then "-#{string}"
  when  1 then "+#{string}"
  else         string
  end
end

# refactor even more by sending abs version to method so don't need to check
# size of num twice... plus deal with 0 case via explicit return
def signed_integer_to_string(num)
  return '0' if num == 0

  sign = num < 0 ? '-' : '+'

  sign + integer_to_string(num.abs) # or integer_to_string(num.abs).prepend(sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'