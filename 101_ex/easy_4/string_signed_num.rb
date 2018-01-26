# string to signed number

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



# WORKS BUT NEEDS A BIG FAT REFACTOR...
# def string_to_signed_integer(signed_string)

#   if signed_string[0] == '-'
#     sign = 'negative'
#     signed_string.slice!(0)
#   elsif signed_string[0] == '+'
#     sign = 'positive'
#     signed_string.slice!(0)
#   else
#     sign = 'positive'
#   end

#   abs_result = string_to_integer(signed_string)

#   sign == 'positive' ? abs_result : 0 - abs_result
# end

def string_to_integer(input_string)
  digit_array = input_string.chars.map { |el| el = CHARACTER_MAPPING[el] }

  number = 0
  digit_array.each { |el| number = 10 * number + el }
  number
end

def string_to_signed_integer(signed_string)
  
  if ['+', '-'].include?(signed_string[0])
    abs_result = string_to_integer(signed_string.slice(1..-1))
  else
    abs_result = string_to_integer(signed_string)
  end

  signed_string[0] == '-' ? 0 - abs_result : abs_result
end

# You can simply return the negative result of a method...
# though this method needs refactoring too...
def string_to_signed_integer(signed_string)
  case signed_string[0]
  when '-' then -string_to_integer(signed_string[1..-1]) # ****
  when '+' then string_to_integer(signed_string[1..-1])
  else          string_to_integer(signed_string)
  end
end

# refactored but not that helpful?
def string_to_signed_integer(signed_string)
  abs_result = 
  if %w(+ -).include?(signed_string[0])
    string_to_integer(signed_string[1..-1])
  else
    string_to_integer(signed_string)
  end

  signed_string[0] == '-' ? -abs_result : abs_result
end

# refactored as per reqs
def string_to_signed_integer(string)
  string[0] == '-' ? num = -1 : num = 1
  case string[0]
  when '+', '-' then string.slice!(0)
  end
  string_to_integer(string) * num
end

def string_to_signed_integer(string_num)
  sym = string_num[0]
  string_num = string_num[1..-1] if sym == '-' || sym == '+'
  string_to_integer(string_num) * (sym == '-' ? -1 : 1)
end

# using String#delete ... very clever
def string_to_signed_integer(str)
  num = string_to_integer(str.delete('+-'))
  num = -num if str[0] == '-'
  num
end




p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570  
p string_to_signed_integer('+100') == 100
