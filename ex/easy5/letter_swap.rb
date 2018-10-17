# PROBLEM (incl input, output, rules)
# input: string of words separated by spaces, 
# output: a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, 
# and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces

# for each word, word[0] becomes word[-1], word[-1] becomes word[0]
# can re-assign, or actually remove and re-add
# transformation

# EXAMPLES/TEST CASES
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# ALGO
# split string into array of words, set as words
# iterate through words using map to return new array
# first = word.pop; last = word.shift
# word.prepend(first); word << last
# join with spaces
# end

# ['oh', 'what', 'a', 'wonderful']

# CODE (with intent!)

def swap(string)
  words = string.split.map do |word|
    if word.length == 1
      word
    else
      word[1..-2].prepend(word[-1]).concat(word[0])
    end
  end
  words.join(' ')
end

# hybrid methodology with LS
def swap(string)
  words = string.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  words.join(' ')
end

# better to actually do as sep methods...??

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

# SEE USER SOLUTIONS FOR OTHER APPROACHES. 
# KEY IS THE SIMULTANEOUS ASSIGNMENT.

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'