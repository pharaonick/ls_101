# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with all five or more letter words reversed. 
# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# input:
# string with 1+ words & spaces

# output:
# string with all 5+letter words reversed

# test cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# data strucs:
# string

# pseudo code:
# given string of words+spaces
# break string into array
# identify words with 5+ letters
# reverse the letters in those words
# return string

# formal pseudo:
# START
# given string of words + spaces, string
# SET array = string.split(' ')
# ITERATE over array
# IF el.length > 4
#   el.reverse
# JOIN array => string
# END

# def reverse_words(string)
#   array = string.split

#   array.map! { |el| el.length > 4 ? el.reverse! : el }
    
#   array.join(' ')
# end

# puts reverse_words('Professional')
# puts reverse_words('Walk around the block')
# puts reverse_words('Launch School')



# slightly shorter, plus no need to be destructive now...
def reverse_words(string)
  array = string.split.map { |el| el.length > 4 ? el.reverse! : el }
    
  array.join(' ')
end

# puts reverse_words('Professional')
# puts reverse_words('Walk around the block')
# puts reverse_words('Launch School')

# launch school method
# def reverse_words(string)
#   reversed = []

#   string.split.each do |word|
#     word.reverse! if word.length >= 5
#     reversed << word
#   end
#   reversed.join(' ')
# end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')


# short and elegant
def reverse_words(string)
  string.split.each { |word| word.reverse! if word.length >= 5 }.join(' ')
end


# Note that split removes additional whitespaces. 
# so if you want to preserve "My string     with     extra spaces"
# you have to regex it: string.split(/ /)






