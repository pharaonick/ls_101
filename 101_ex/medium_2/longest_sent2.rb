# Write a program that reads the content of a text file 
# and then prints the longest sentence in the file based on number of words. 
# Sentences may end with periods (.), exclamation points (!), or question marks (?). 
# Any sequence of characters that are not spaces or sentence-ending characters 
# should be treated as a word. 
# You should also print the number of words in the longest sentence.

=begin

input: string
output: longest sentence from string, and no. of words it contains
  - sentence is bounded by '.', '!', '?'
  - any seq of non-space or non-sentence-ending chars is a word

- split text by space
- iterate through and add each word to first element of a results array
until we reach a word ending in a sentence-ender
    - then add to second element...
  call length on elements to find longest one


=end
require 'pry'
require 'pry-byebug'

def longest(str)
  words = str.split
  results = []
  
  start_index = 0
  words.each_with_index do |word, idx|
    if word.end_with?('.', '!', '?')
      results << words[start_index..idx].join(' ')
      start_index = idx + 1
    end
  end

  sorted_sentences = results.sort_by do |sentence|
    sentence.split.count
  end

  sorted_sentences.last

  puts "The longest sentence has #{sorted_sentences.last.split.count} words and is: #{sorted_sentences.last}"
end



# (am doing this for the algo prac rather than file manipulation...)

four_score = "Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this."

longest(four_score)