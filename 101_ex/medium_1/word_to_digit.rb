=begin
Write a method that takes a sentence string as input, 
and returns the same string with any sequence of the words 
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
converted to a string of digits.

LOL see today's study session ;) 3/20
=end

#["Please", "call", "me", "at", "five", "five", "five", 
# "one", "two", "three", "four.", "Thanks."]

DIGITS = %w[zero one two three four five six seven eight nine]

def word_to_digits(str)
  DIGITS.each do |name|
    str.gsub!(/\b#{name}\b/, DIGITS.index(name).to_s)
  end
  # str.each_char.with_index do |char, idx|
  #   if (char.to_i.to_s == char) && (str[idx + 1] == ' ')
  #     str[idx + 1] = ''
  #   end
  # end
  # str
end

p word_to_digits('Please call me at five five five one two three four. Thanks.')# == 
'Please call me at 5 5 5 1 2 3 4. Thanks.'


# JUST USE GSUB WITH A HASH... SUB K FOR V...
# KELLY'S SOLUTION IS VERY COOL...
# CAN ACTUALLY CHAIN TOGETHER METHODS BASED ON RETURN VALUE WITHOUT NECESSARILY
# MUTATING THE ORIGINAL _UNLESS YOU WANT TO_ (e.g. Shivesh)

# omg this!!!
DIGIT_STRINGS = { "zero"  => "0", "one"  => "1", "two" => "2", "three" =>  "3", 
                  "four"  => "4", "five" => "5", "six" => "6", "seven" =>  "7",
                  "eight" => "8", "nine" => "9" }

def word_to_digit(string)
  string.split(/\b/).map { |word| DIGIT_STRINGS[word] || word }.join
end



# DIGIT_STRINGS = { "zero"  => "0", "one"  => "1", "two" => "2", "three" =>  "3", 
#                   "four"  => "4", "five" => "5", "six" => "6", "seven" =>  "7",
#                   "eight" => "8", "nine" => "9" }

# def word_to_digits(string)
#   string.split(/\b/).map { |word| DIGIT_STRINGS[word] || word }.join
# end

# 

# def word_to_digits(str)
#   DIGIT_STRINGS.each do |k, v|
#     str.gsub!(k, v)
#   end
#   str
# end

DIGIT_STRINGS = %w[zero one two three four five six seven eight nine]

def word_to_digits(str)
  DIGIT_STRINGS.each do |number|
    str.gsub!(number, DIGIT_STRINGS.index(number).to_s)
  end
  str
end




=begin
Can you change your solution this so the spaces between consecutive numbers are removed? 
Suppose the string already contains two or more space separated numbers (not words); 
can you leave those spaces alone, while removing any spaces between numbers 
that you create?

What about dealing with phone numbers? 
Is there any easy way to format the result to account for phone numbers? 
For our purposes, assume that any 10 digit number is a phone number, 
and that the proper format should be "(123) 456-7890".




=end