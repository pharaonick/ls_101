# PROBLEM (incl input, output, rules)
# Write a method that takes a string with one or more space separated words 
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

EXAMPLES/TEST CASES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# DATA STRUCS


# ALGO


# CODE (with intent!)

# might be better written as ternary
# oooooh you can set a default value to the hash you pass in:
# .each_with_object(Hash.new(0)) do...end
def word_sizes(sentence)
  sentence.split.each_with_object({}) do |word, length_freq|
    
    if length_freq.has_key?(word.length)
      length_freq[word.length] += 1
    else
      length_freq[word.length] = 1
    end
  end
end

def word_sizes(sentence)
  length_freq = Hash.new(0)
  
  sentence.split.each do |word|
    length_freq[word.length] += 1
  end
  length_freq
end

# finally refactors down to this then
def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, count|
    count[word.size] += 1
  end
end 


# group_by is made for this!!!
def letter_counter(sentence)
     count = sentence.split.group_by {|x| x.length}
     count.each {|x, i| count[x] = i.count}
end 