# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. 
# Spaces should not be counted as a character.

puts 'gimme a string'
str = gets.chomp

puts "Excluding spaces, there are #{str.count('^ ')} characters in your string..."