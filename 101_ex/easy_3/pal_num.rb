# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards.

# e.g.
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# def palindromic_number?(int)
#   int.to_s == int.to_s.reverse
# end

# p palindromic_number?(34543) # == true
# p palindromic_number?(123210) # == false
# p palindromic_number?(22) # == true
# p palindromic_number?(5) # == true

# remove leading 0s

# split by 0 to array
# iterate thr'ough adding digits back except if empty

require 'pry'
def removed_leading_zeroes_palindromic_number?(int)
  string_int = int.to_s
  binding.pry

  string_int.gsub!(/^0*/, '')
  binding.pry
  
  string_int == string_int.reverse
  binding.pry
end

14691

p removed_leading_zeroes_palindromic_number?(034543) # == true
p removed_leading_zeroes_palindromic_number?(0123210) # == false
p removed_leading_zeroes_palindromic_number?(0022) # == true
p removed_leading_zeroes_palindromic_number?(000005) # == true