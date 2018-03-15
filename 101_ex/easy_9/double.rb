# input: integer (is this true?)
# output: doubled integer UNLESS int was double number
# -- double number is where left and right digits are same in even digited number
# e.g. 44, 3333, 102102

# double num must be even length
# length / 2 is start index of second half

# convert to string
# test length return false if not even
# set halfway as length / 2
# test whether str[0...halfway] == str[halfway..-1]

# watch for edge cases...

def double_num?(num)
  num_string = num.to_s
  return false if num_string.length.odd?
  halfway = num_string.length / 2
  num_string[0...halfway] == num_string[halfway..-1]
end

def twice(num)
  double_num?(num) ? num : num * 2
end


# WOW
def twice(num)
  left, right = num.divmod(10**(num.digits.size / 2))
  left == right ? num : num * 2
end


twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
