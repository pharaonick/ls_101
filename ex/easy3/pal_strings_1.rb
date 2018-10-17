# Write a method that returns true if the string passed as an argument 
# is a palindrome, false otherwise. 
# A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

# e.g.
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true


# input:
# string

# output:
# boolean

# rules:
# return true if argument is palindrome; case, punctuation, spaces matter

def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')

# # old-skool method: 
# # new_str = ''
# # set count to string.length-1
# # loop through string, adding string[count] to new_str and reducing count
# # end when count < 0

# # (many other ways to do this ...!)

def og_palindrome?(str)
  new_str = ''
  index = str.length - 1

  until index < 0
    new_str += str[index]
    index -= 1
  end

  str == new_str
end

p og_palindrome?('madam')
p og_palindrome?('Madam')
p og_palindrome?("madam i'm adam")
p og_palindrome?('356653')


# Further exploration. Same method but for array

def ary_palindrome?(ary)
  ary == ary.reverse
end

p ary_palindrome?([3, 5, 6, 6, 5, 3])

# Method that can handle string or array but without if/unless/case

def pali?(arg)
  arg == arg.reverse
end

p pali?('madam') #=> true
p pali?('Madam') #=> false
p pali?("madam i'm adam") #=> false
p pali?('356653') #=> true
p pali?(%w(m a d a m)) #=> true
p pali?(%w(M a d a m)) #=> false
p pali?([3, 5, 6, 6, 5, 3]) #=> true















