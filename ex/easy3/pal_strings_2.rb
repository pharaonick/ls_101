# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should 
# be case-insensitive, and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method 
# you wrote in the previous exercise.

# input:
# string

# output:
# boolean if string is palindrome

# rules:
# ignore case and all non-alphanumeric chars.

# test cases:
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# pseudo code:
# basically need to call downcase and chop out special chars
# - slice
# - delete
# - loop through and find
# - regex

# code:

def real_palindrome?(str)
  stripped_str = str.gsub(/\W/, '')
  stripped_str.downcase == stripped_str.downcase.reverse
end

p real_palindrome?('madam')
p real_palindrome?('Madam')          # (case does not matter)
p real_palindrome?("Madam, I'm Adam") # (only alphanumerics matter)
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')

# can also use delete method telling it to delete everything that's 
# not a-z or 0-9
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end

p real_palindrome?('madam')
p real_palindrome?('Madam')          # (case does not matter)
p real_palindrome?("Madam, I'm Adam") # (only alphanumerics matter)
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')

# creating your own array of characters to allow
def real_palindrome?(string)
  alphanums = [("0".."9").to_a, ("a".."z").to_a].flatten
  clean_str =  string.downcase.chars.select { |str| alphanums.include?(str) }
  clean_str == clean_str.reverse
end

# scanning to an array then joining back together
def real_palindrome?(words)
  words = words.scan(/[a-zA-Z0-9]/).join
  words.downcase == words.downcase.reverse
end

# using ranges
def real_palindrome?(string)
  string.downcase!

  string.each_char do |char|
    string.delete!(char) if !('0'..'9').cover?(char) && !('a'..'z').cover?(char)
  end

  string == string.reverse
end

# complicated but kinda clever
def palindrome?(str)
str.chars.each_with_index do |i, index|
  if i != str.chars[(str.size) - index - 1]
    return false
  end
end
  true
end





