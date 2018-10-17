# input: str
# output: array of all substrings in order

def substrings_at_start(str)
  substrings = []
  count = 0

  until count == str.length
    substrings << str[0..count]
    count += 1
  end
  substrings
end

def substrings_at_start(str)
  str.chars.map.with_index do |_, i|
    str[0..i]
  end
end 

#LS solution uses `Integer#upto`
# could do same thing using slice

def substrings_at_start(str)
  substr = []
  0.upto(str.length - 1) do |i|
    substr << str[0..i]
  end
  substr
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
