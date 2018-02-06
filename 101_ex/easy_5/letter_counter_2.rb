# PROBLEM (incl input, output, rules)
# Modify the word_sizes method from the previous exercise 
# to exclude non-letters when determining word size. 
# For instance, the length of "it's" is 3, not 4.

# EXAMPLES/TEST CASES
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# DATA STRUCS


# ALGO


# CODE (with intent!)


def remove_non_letters(str)
  str.chars.reject { |char| char =~ /[^a-z ]/i }.join.split
end

def word_sizes(string)
  remove_non_letters(string).each_with_object(Hash.new(0)) do |word, count|
    count[word.size] += 1
  end
end 


# can also do it by manipulating word before counting, which is 
# probably cleaner than having a separate method...

# BEST NOT TO MUTATE... SAVE MODIFIED WORD AS NEW VAR
def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, count|
    word.delete!('^a-zA-Z')
    count[word.size] += 1
  end
end 

# using group_by
def word_sizes(sentence)
  cleaned = sentence.gsub(/[^0-9a-z]/i, ' ')
  grouped = cleaned.split.group_by {|x| x.length }
  results = grouped.each {|x, i| grouped[x] = i.length}
end

word_sizes("What's up doc?")


word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}