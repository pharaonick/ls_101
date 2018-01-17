# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. 
# Spaces should not be counted as a character.

# EX
# input:

# Please write word or multiple words: walk

# output:

# There are 4 characters in "walk".

# input:

# Please write word or multiple words: walk, don't run

# output:

# There are 13 characters in "walk, don't run".

# ---

# NOTE this may not be best candidate for a method...

def character_count(string)
  total_chars = string.chars
  
  space_count = 0

  total_chars.each { |el| space_count += 1 if el == ' ' }

  total_chars.length - space_count
end

puts "Please enter one or more words"
words = gets.chomp

output = "There are #{character_count(words)} characters "
output += "(exluding spaces) in '#{words}'."
puts output

# THERE'S A STRING#DELETE METHOD, so...:
# string.delete(' ').size

# And could also:
# string.split.join('').length

# Also check out Kesley and Shivesh https://launchschool.com/exercises/f85563ae
# which use #count and #gsub
