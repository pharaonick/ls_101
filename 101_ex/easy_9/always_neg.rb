# input: num
# output: -num if num +ve, else num

def negative(num)
  num <= 0 ? num : -num
end

# can also use stuff like `Numeric#positive?`

# can also do like this
def negative(number)
  -number.abs
end

# or
def negative(int)
  int = -int unless int <= 0
  int
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby