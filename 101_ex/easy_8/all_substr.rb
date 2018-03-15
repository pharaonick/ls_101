# input: string
# output: all substrings, ordered by beginning position then length
# use previous substrings_at_start method



# pass full string into subs_at_start method
# then slice from count 1..-1

# set count 0 
# until count = str.length

# 0..-1
# count += 1
# 1..-1
# 2..-1

# WRITE A METHOD THAT DOES THIS WITHOUT THE HELPER METHOD!


def substrings_at_start(str)
  str.chars.map.with_index do |_, i|
    str[0..i]
  end
end

# could also use `Array#concat` instead of `<<` (and avoid flattening)
def substrings(str)
  result = []
  count = 0

  until count == str.length
    result << substrings_at_start(str.slice(count..-1))
    count += 1
  end
  result.flatten
end

#rather than until loop can use (0...str.size).each {...}

# very cool index based nested iteration solution! 
def substrings(str)
  substrings = []
  str.chars.each_with_index do |_, idx|
    idx.upto(str.size - 1) do |x|
      substrings << str[idx..x]
    end
  end
  substrings
end

def substrings(str)
  substrings = []
  index = 0
  until index == str.size
    0.upto(str.size - 1) do |idx|
      substrings << str[index..idx]
    end
    index += 1
  end
  substrings.delete_if { |string| string.empty? }
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]