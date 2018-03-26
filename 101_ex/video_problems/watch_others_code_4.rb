# 1
# method - single string arg & returns
# new string that contains original value of arg
# but first letter of every word now capped

# assume words are any sequence of non-blank chars
# and that only first char of each word must be 
# considered

=begin
input: string of words
  - word = any sequence of non-blank chars
output: NEW string where each word of original is capped
  - only consider first character of word
  - don't change other characters in word
    - can't just call capitalize because it will affect other chars in word...

1. split the string into an array of words (split by space)
2. initialize a new, empty array to contain our result
3. iterate through our array of words
  - call upcase on the character at index [0] 
  - push word into result
4. join result back together as string

3.a
- call upcase destructively and then push. BUT what happens if can't be upped, e.g. '"'
- or
- push word[0].upcase and then remaining chars
  - 'javaScript'
  - word = word[0].upcase + word[1..-1]
- or could even split each word into chars...

=end

# def word_cap(str)
#   words = str.split
#   capped_words = []

#   words.each do |word|
#     word = word[0].upcase + word[1..-1]
#     capped_words << word
#   end

#   capped_words.join(' ')
# end

#refact...
def word_cap(str)
  str.split.map { |word| word[0].upcase + word[1..-1] }.join(' ')
end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The JavaScript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

##########################
##########################
##########################

# 2
# Method that returns no. of Fri 13 in a year.
# Assume year greater than 1752 (when modern Gregorian calendar adopted by UK)
# and that it will stay that way awhile...

=begin

initialize a Date object set to 1/13/yr
check to see if that is a Friday, if so, increment Fridays count
shift forward a month and check again
do this 12 times...

=end
require 'date'

def friday_13th(year)
  date = Date.new(year, 1, 13)
  friday_count = 0

  12.times do |i|
    friday_count += 1 if date.friday?
    date = date.next_month
  end

  friday_count
end

# if you don't know how to use this class you could always
# just recreate Date.new(year, month, 13)
# where month is incremented 1..12 
# and check if each instance is a friday?


# p friday_13th(2015) #== 3
# p friday_13th(1986) #== 1
# p friday_13th(2019) #== 2

##########################
##########################
##########################

# 3
# Write a method that will generate random English math problems.
# Should take a length, then return a math phrase with that many operations.

=begin
an operation is OPERATOR.sample + ' ' + NUMBERS.sample
whole thing must begin with NUMBERS.sample

string together operator method calls -- however many the arg is

operation method
OPERATOR.sample + ' ' + NUMBERS.sample

main method
- define starting num as sample of NUMBERS
- puts arg.times method call


=end

# provided constants:
NUMBERS = %w[zero one two three four five six seven eight nine ten]
OPERATORS = ['plus', 'minus', 'times', 'divided by']

# def operation
#   OPERATORS.sample + ' ' + NUMBERS.sample
# end

# def mathphrase(num)
#   expression = "#{NUMBERS.sample} "
#   num.times { expression += operation + ' '}
#   expression.strip
# end

# might be easier actually to loop and push to array without a helper method, then join
def mathphrase(num)
  results = [NUMBERS.sample]

  num.times do 
    results << OPERATORS.sample << NUMBERS.sample
  end

  results.join(' ')
end

# p mathphrase(1) #=> 'five minus two'
# p mathphrase(2) #=> 'two plus three times eight'
# p mathphrase(3) #=> 'one divided by three plus five times zero'

##########################
##########################
##########################

# 4
# Write a program that will generate random english
# math problems of random length

def rand_math
  mathphrase(rand(1..20))
end

p rand_math




