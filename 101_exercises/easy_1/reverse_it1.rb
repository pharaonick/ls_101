# Write a method that takes one argument, a string, 
# and returns the same string with the words in reverse order.

# input: string
# output: string with original string words in reverse order

# test cases
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# data strucs: string

# initial solution using more Ruby-style methods

def reverse_sentence(sentence)
  sentence.split.reverse!.join(' ') # don't need to ! it here, though I think it does impact the object returned?
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# algo old skool
# given a string
# split the string into an array of each word
# set count at array length
# loop through array, adding el at count index to empty string
# count - 1
# end when count < 0 
# (obv could do the loop via each, too)

def reverse_sentence(sentence)
  if sentence.empty?
    puts "No empty strings"
  else
    words = sentence.split
    reversed_sentence = ''
    
    count = words.length-1
    loop do
      reversed_sentence += words[count] + ' '
      count -= 1
      break if count == 0
    end

    reversed_sentence += words[count]
  end
end

# using each actually makes it tougher because of the space!
# might even be easier to do it via an array so can join
def reverse_sentence(sentence)
  if sentence.empty?
    puts "No empty strings"
  else
    words = sentence.split
    reversed_sentence = ''
    
    words.each { |word| reversed_sentence += word + ' ' }

    reversed_sentence.chop
  end
end

puts reverse_sentence('') #== ''
p reverse_sentence('Hello World') #== 'World Hello'
p reverse_sentence('Reverse these words') #== 'words these Reverse'

#interesting one going via an array
# not sure about init the variable as a param...
def reverse_sentence(input, a=[])
  b = input.split
  a << b.pop until b.empty?
  a.join(" ")
end
