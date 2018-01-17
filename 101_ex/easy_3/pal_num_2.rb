require 'pry'

def removed_leading_zeroes_palindromic_number?(int)
  #binding.pry
  string_int = int.to_s

  string_int.gsub!(/^0*/, '')
  
  string_int == string_int.reverse
end

# # This would work... if Ruby didn't convert those '0..' numbers into base 8!!
# # The other way to make it work with 0 leading integers would be to convert from base-8 to base-10, somehow


p removed_leading_zeroes_palindromic_number?(34543) # => true (expected)
p removed_leading_zeroes_palindromic_number?(034543) # => false (expecting true if code correct), BUT int passed in as 14691 (base 10 converted to octal?)
p removed_leading_zeroes_palindromic_number?(0094543) # => invalid octal digit
p removed_leading_zeroes_palindromic_number?(007) # => true (expected), BUT int passed in as 7 (base 10 converted to octal?)
p removed_leading_zeroes_palindromic_number?(009) # => invalid octal digit
p removed_leading_zeroes_palindromic_number?(123456) # => false (expected), int passed in as 123456

# checking gsub method using one instead of zero
# p removed_leading_zeroes_palindromic_number?(34543) 
# p removed_leading_zeroes_palindromic_number?(134543)
# p removed_leading_zeroes_palindromic_number?(1194543)
# p removed_leading_zeroes_palindromic_number?(117) 
# p removed_leading_zeroes_palindromic_number?(119)
# # p removed_leading_zeroes_palindromic_number?(123456) # obv doesn't work for this one



# # even other solutions from students don't work if add in non-valid octal number
# def zero_number_palindrome?(int)
#   corrected_input = '0%o' % int
#   palindrome?(corrected_input)
# end 

# #p zero_number_palindrome?(01233210) == true
# p zero_number_palindrome?(09233210)