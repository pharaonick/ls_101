# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, 
# the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# input:
# two strings, of different length

# output:
# shortstring_longstring_shortstring concatenated together

# rules:
# short long short
# assume dif lengths

# test cases:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# pseudo code:
# - compare the two strings to see which is short and which is long


# - concat short long short



# code:

# v verbose ;)
# def short_long_short(str1, str2)
#   short = ''
#   long = ''

#   if str1.length < str2.length
#     short = str1
#     long = str2
#   else
#     short = str2
#     long = str1
#   end

#   short.concat(long, short)
# end

def short_long_short(str1, str2)
  if str1.length < str2.length
    str1.concat(str2, str1) # or, e.g., str1 + str2 + str1
  else
    str2.concat(str1, str2)
  end
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

# bit too clever, as in tough to follow what method is doing and why
def too_clever(st1, st2)
  arr = [st1, st2].sort_by { |el| el.length }
  arr[0] + arr[1] + arr[0] # or arr.first + arr.last + arr.first
end

p too_clever('abc', 'defgh')
p too_clever('abcde', 'fgh')
p too_clever('', 'xyz')

# can use combined comparision but only on length
# because of the way it compares strings of unequal length
def short_long_short(string, string2)
  short, long = [string, string2].sort { |a, b| a.length <=> b.length }
  short + long + short
end





