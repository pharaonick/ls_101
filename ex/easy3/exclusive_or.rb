# In this exercise, you will write a method named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise.

#doesn't need conditional! See best way, below
def xor?(arg1, arg2)
  (arg1 && !arg2) || (arg2 && !arg1) ? true : false
end

#BEST WAY
def xor?(arg1, arg2)
  (arg1 && !arg2) || (arg2 && !arg1)
end

# alt way of expressing (though not so Ruby)
def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if arg2 && !arg1
  false # necessary because previous line returns nil (not false) if condition falsey
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)



# super simple!
def xor?(con_1, con_2)
  !(con_1 == con_2)
end

# using Enumerable#one?
def xor?(bool_1, bool_2)
  [bool_1, bool_2].one? # returns true if code block true for exactly one element of collection
end

# mathematical approach
def xor?(one, two)
  xor = 0
  if one
    xor += 1
  elsif two
    xor += 1
  end
  return true if xor == 1
end

# another unique one...
def xor?(value1, value2)
  (value1 && value2) ? (return false) : (return value1 || value2)
end






