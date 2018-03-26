# 1 (Charles)

# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# hash as lookup table
# break string into array
# iterate through and if word is in the hash, 
#   replace with digit (need to account for periods)
# join


LOOKUP = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

# solves except for punctuation after number-as-word
# note, might be better as array vs hash since you can use index...
# def word_to_digit(str)
#   str.split.map { |word| LOOKUP.key?(word) ? LOOKUP[word] : word }.join(' ')
# end

# ************************************************
# try to solve for punctuation after number-as-word
# ... save index of string that has punctuatio...????
# def word_to_digit(str)
#   words = str.split

#   words.map do |word|
#     word_no_punctuation = word.gsub(/\W/i, '')
#     if LOOKUP.key?(word_no_punctuation)
#       LOOKUP[word_no_punctuation]
#     else
#       word
#     end
#   end
# end

def word_to_digit(str)
  words = str.split
  
  # if word ends in punctuation mark, pass [word, mark] to map method
  separate_punctuation = words.map do |word|
    if %w[! , ? ; . -].include?(word[-1])
      [word[0..-2], word[-1]]
    else
      word
    end
  end

  # get rid of the nesting in the map return 
  separate_punctuation.flatten!
  # => ["Please", "call", "me", "at", "five", "five", "five", "one", "two", "three", "four", ".", "Thanks", "."]

  # straightforward transformation of word to digit (using hash as lookup, would be better as Array probably)
  transformed_array = separate_punctuation.map do |el|
    if LOOKUP.key?(el)
      LOOKUP[el]
    else
      el
    end
  end 
  # => ["Please", "call", "me", "at", "5", "5", "5", "1", "2", "3", "4", ".", "Thanks", "."]
  
  # shifting punctuation into previous element so we can call join later
  transformed_array.each_with_index do |el, idx|
    if transformed_array[idx + 1] =~ /[.,;!?-]/
      transformed_array[idx] += transformed_array[idx + 1]
      transformed_array.delete_at(idx + 1)
    end 
  end

  transformed_array.join(' ')
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'




# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# input:
#   - string (contains nums: 'one', 'two', etc)
# output:
#   - the same string (modified) where the english numbers are now str. representations      of integers

# rules:
#   - eng num can be any case
#   - eng num may be at the end of a sentence (immediately follwed by punctuation)
#   - modify input string
#   - freight should not transform to 'fr8'
#   - the eng number transformed must be the complete eng word at word boundary

# algorithm:
#   - split the input string into words
#   - create a key that will help transform eng nums to integers
#   - iterate through the words transforming any eng nums into integers
#   - 

# def word_to_digit(string)
#   words = string.split(' ')
#   words_key = %w[zero one two three four five six seven eight nine] 
#   words.map! do |word|
#     if words_key.include?(word)
#       words_key.index(word)
#     else
#       word
#     end
#   end.join(' ')
# end



# p word_to_digit('Please call me at five five five one two three four. Thanks.') 
#== 'Please call me at 5 5 5 1 2 3 4. Thanks.'



#################################################

# 2 (Faazil)

# In mathematics, factorials are special numbers. They are usually written as a positive integer followed by an exclamation point, e.g., 5! (which is read as "five factorial"). 5! can be computed as:

# 5! -> 5 * 4 * 3 * 2 * 1 -> 120
# Similarly, 10! is 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1, or 3628800.

# Write a method that computes the factorial value for some arbitrary positive integer, and returns the sum of all of the digits in that number. For this exercise, do not use reduce or inject.

# input:
#   - integer
# output:
#   - sum each digit in factorial result
# algorithm:
#   - calculate the factorial
#   - sum variable to hold each factorial assign it to 1
#   - iterate from (1 .. input) - that's a range, and on each iteration i am going to reasssign the sum variable to be sum *= iteration
#   - if input is 4, it should 1 *= sum, 2 *= sum, sum = 2, 3 *= sum, sum = 6...
#   - convert the sum to a string, get each individual character in the string and i want to store each digit/character in an array of digits
#   - iterate over the array of digits and convert each character/digit individually to an integer object again
#   - finally i want to sum the array of integers

# def factorial_sum(num)
#   sum = 1
#   factorial = (1..num).to_a
#   factorial.each do |n|
#     sum *= n
#   end
#   digits = sum.to_s.chars
#   digits.map! do |digit|
#     digit.to_i
#   end
#   digits.inject(:+)
# end


# puts factorial_sum(4) == 6     # (4! -> 24 -> 2 + 4 -> 6)
# puts factorial_sum(10) == 27   # (10! -> 3628800 -> 3+6+2+8+8+0+0 -> 27)
# puts factorial_sum(50) == 216
# puts factorial_sum(100) == 648


# Nick attempt

# In mathematics, factorials are special numbers. They are usually written 
# as a positive integer followed by an exclamation point, e.g., 5! 
# (which is read as "five factorial"). 5! can be computed as:
# 5! -> 5 * 4 * 3 * 2 * 1 -> 120
# Similarly, 10! is 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1, or 3628800.

# Write a method that computes the factorial value for some arbitrary positive integer, 
# and returns the sum of all of the digits in that number. 
# For this exercise, do not use reduce or inject.

# puts factorial_sum(4) == 6     # (4! -> 24 -> 2 + 4 -> 6)
# puts factorial_sum(10) == 27   # (10! -> 3628800 -> 3+6+2+8+8+0+0 -> 27)
# puts factorial_sum(50) == 216
# puts factorial_sum(100) == 648

# 1. compute factorial
#   1. set a memo variable to hold ongoing value of calculation -- value of given int.
#   2. from memo -1 down to 1, multiply memo by the iteration index
# 2. sum digits within factorial
#   1. convert factorial into array of digits
#   2. sum those digits


# faaz's factorial method might be easier... convert range to array and iterate through
# def factorial(num)
#   memo = num
#   (memo - 1).downto(1) do |i|
#     memo *= i
#   end
#   memo
# end

# def factorial_sum(int)
#   factorial(int).digits.sum
# end


########################################

# 3 Nick
# A featured number (something unique to this exercise) is 
# an odd number that is a multiple of 7, 
# and whose digits occur exactly once each. 
# So, for example, 49 is a featured number, 
# but 98 is not (it is not odd), 
# 97 is not (it is not a multiple of 7), 
# and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, 
# and returns the next featured number that is greater than the argument. 
# Issue an error message if there is no next featured number.

# input: single integer, `int`
# output: next featured number > `int`, error message if none

# 1. featured_number? method
# 2. find the next featured number

# featured num = multiple 7, odd, no repeated digits

# multiple 7 ... %
# odd?
# repeated digits: break into string, iterate over, check...?

# # def featured_number?(int)
# #   return false unless int.odd?
# #   return false unless int % 7 == 0
  
# #   digits_array = int.digits
# #   return false unless digits_array == digits_array.uniq
  
# #   true
# # end

# def featured_number?(int)
#   int.odd? && int % 7 == 0 && int.digits == int.digits.uniq 
# end

# def featured(num)
#   possible_featured = num + 1

#   loop do
#     if featured_number?(possible_featured)
#       return possible_featured
#     else
#       possible_featured += 1
#     end
#     break if possible_featured > 9876543210
#   end
#   "I'm sorry there is no featured number greater than your argument"
# end

# # Examples:

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# # 9876543210

