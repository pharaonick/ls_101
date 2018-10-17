=begin

input: text file (start just with text)
output: print longest sentence in file & the no. words in that sentence
rules:
sentence ending characters -- . ! ? -- are not words
any sequence of characters that is not spaces or sentence-ending is a word

-- don't worry about sentence ending then because will simply be part of
the word they are 'attached' to

Iterate through string and count all words between start and first sentence ender. 
Then up to next sentence ender.
Etc.
Return longest + count

possible options...
1. - split string into sentences using sentence ender as delimiter
  - split sentence into words
  - count words -> longest sentence
  - search text for longest sentence match to find the appropriate ender
2. - split string by word
  - iterate through until end of word is a sentence-ender -- use that as count

option1:
1. split string by sentence ender -> array of sentences
2. set longest []
3. iterate through array, splitting sentences into array of words and counting them
4. if length > longest.length, push sentence to array.
5. return final sentence count and print

WHAT ABOUT EQUAL LENGTH SENTENCES?
=end

# difficult to find punctuation at end...
# def longest(str)
#  sentences = str.split(/[.!?] /)
#  longest = ""

#  sentences.each do |sentence|
#   longest = sentence if sentence.split.size > longest.split.size
#  end
#  longest
# end

require 'pry'
require 'pry-byebug'

str = File.read("four_score3.txt")
binding.pry
#str = "This is my lovely sentence. It's the best one! Why don't you think this is the best sentence ever?"

# str = "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."

words = str.split

sentences = []
idx = 0
words.each_with_index do |word, i|
  if %w[. ! ?].include?(word[-1])
    sentences << words[idx..i]
    idx = i + 1
  end
end

sentences.map! do |sentence|
  sentence.join(' ')
end

longest = ''
sentences.each do |sentence|
  longest = sentence if sentence.split.size > longest.split.size
end
puts "The longest sentence has #{longest.split.size} words, and is: '#{longest}'"



# LS solution

# text = File.read('four_score3.txt')

# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"



# graf = "Graf is short for paragraph. This is my lovely short graf! Isn't that great?"
# graf = "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."




=begin

1. when i run my code accessing the file it only takes the first graf...
2. but LS code takes whole thing
3. mine works fine with a one-line external file
4. mine works fine if i assign the text to a variable in the program...

=end