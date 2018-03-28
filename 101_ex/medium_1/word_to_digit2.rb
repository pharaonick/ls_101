# Write a method that takes a sentence string as input, 
# and returns the same string with any sequence of the words 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
# converted to a string of digits.

=begin

input: string
output: same string with sequence of number words converted to digits
  - must be sequence of number words?
  - spaces between words?
  - point at end of word?
  
- search string for number words
- convert them into digits using a lookup array and calling to_s on index?

- split sentence by word boundary -- `split_sentence`
- iterate through `split_sentence`
  - if lookup_array includes the element, replace element with index to s
    otherwise, keep element
- join back together (spaces are in array so use default arg)

=end

LOOKUP = %w[zero one two three four five six seven eight nine]

def word_to_digit(str)
  split_sentence = str.split(/\b/)
  transformed_sentence = split_sentence.map do |word|
    LOOKUP.include?(word) ? LOOKUP.index(word).to_s : word
  end 
  transformed_sentence.join
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') 
#== 'Please call me at 5 5 5 1 2 3 4. Thanks.'









