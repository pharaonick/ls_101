#1 Faazil

# Set up alphabet position lookup
# Iterate over letters to check if index+1 matches lookup

# - can actually just do it as an array, then indices will match

# COULD USE MAP AND COUNT TOO


# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example, solve(["abode","ABc","xyzD"]) = [4,3,1]. See test cases for more examples.

# Input will consist of alphabet characters, both uppercase and lowercase. No spaces.
  
# input:
#   - string
# output:
#   - an array
# algorithm:
#   - count in each array, the numbers of letters in the element that are in the correct index position for the letter
#   - initialize a hash where key a = 1, b = 2, z = 26 
#   - iterate over each letter in the element and then compare that letter's index
#   - variable that count's the letters in the correct position while iterating
#   - separate array where I append it the with the count variable
#   - return the count variable

# def solve(array)
#   letters_arr = ('a'..'z').to_a
#   letters_hash = {}
#   letters_arr.each_with_index do |letter, idx|
#     letters_hash[letter] = (idx + 1)
#   end
#   count_arr = []
#   array.each do |string|
#     count = 0
#     string.chars.each_with_index do |char, index|
#      count += 1 if letters_hash[char.downcase] == index + 1
#      count_arr << count if index == (string.size-1)
#     end
#   end
#   count_arr
# end
  
  
# p solve(["abode"]) #== [4]
# p solve(["abode","ABc","xyzD"])  == [4,3,1]
# p solve(["abide","ABc","xyz"]) == [4,3,0]
# p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
# p solve(["encode","abc","xyzD","ABmD"])== [1, 3, 1, 3]


# # 2 Nick

# # https://en.wikipedia.org/wiki/Luhn_algorithm

# #Description Write a function that checks whether a credit card number is correct or not, using the Luhn algorithm.

# # The algorithm is as follows:

# # From the rightmost digit, which is the check digit, moving left, double the value of every second digit; if the product of this doubling operation is greater than 9 (e.g., 8 × 2 = 16), then sum the digits of the products (e.g., 16: 1 + 6 = 7, 18: 1 + 8 = 9) or alternatively subtract 9 from the product (e.g., 16: 16 - 9 = 7, 18: 18 - 9 = 9).
# # Take the sum of all the digits.
    
# # If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn formula; else it is not valid.
    
# # The input is a string with the full credit card number, in groups of 4 digits separated by spaces, i.e. "1234 5678 9012 3456"
  
# # Don´t worry about wrong inputs, they will always be a string with 4 groups of 4 digits each separated by space.


# input: string of numbers, four groups of four separated by space. Will be correct.
# output: true/false according to whether the number passes the Luhn check

# Luhn algo
# - start at far right (at index -1)
# - take num two spaces to left (-3) and double it
#   - if double > 9, add digits
# - repeat (two to left, two to left..)
# - sum all of these check nums
# - if sum % 10 == 0 then we have a luhn


# 1234 5678 9012 345 2

# 5
# 3
# 1
# 9
# 7
# 5
# 3
# 1

# 16 digits
# all even indices


# - iterate through credit card number
# - double each value at an even index and add to a new array
# - iterate through this new array
#   - if the value is over 9, break it into digits and add the digits
#   - otherwise, keep original value
# - sum this and call modulus 10


# # From the rightmost digit, which is the check digit, moving left, double the value of every second digit; if the product of this doubling operation is greater than 9 (e.g., 8 × 2 = 16), then sum the digits of the products (e.g., 16: 1 + 6 = 7, 18: 1 + 8 = 9) or alternatively subtract 9 from the product (e.g., 16: 16 - 9 = 7, 18: 18 - 9 = 9).




# def valid_card?(card_number)
#   array_of_nums = card_number.split
#   flattened_array = array_of_nums.map { |num| num.chars }.flatten
#   flattened_array.map! { |el| el.to_i }
  
#   doubled_values = flattened_array.map.with_index do |el, i|
#     i.even? ? el * 2 : el
#   end  
  
#   final_array = doubled_values.map do |el|
#       if el > 9
#         el.digits.sum
#       else
#         el
#       end
#   end
  
#   final_array.sum % 10 == 0
# end


  
# p valid_card?("1234 5678 9012 3452") == true
# p valid_card?("5555 5555 5555 5555") == false
# p valid_card?("5457 6238 9823 4311") == true
# p valid_card?("5457 6238 9323 4311") == false


# 3


# # oops look at test case three...

# def capital(arr)
#   if arr[0].keys.include?(:state)
#     ["The capital of #{arr[0][:state]} is #{arr[0][:capital]}"]
#   else
#     ["The capital of #{arr[0]['country']} is #{arr[0]['capital']}"]
#   end
# end


# # iterate over keys and convert them all to strings...?



# state_capitals = [{state: 'Maine', capital: 'Augusta'}]
# p capital(state_capitals)[0] #== "The capital of Maine is Augusta"

# country_capitals = [{'country' => 'Spain', 'capital' => 'Madrid'}]
# p capital(country_capitals)[0] #== "The capital of Spain is Madrid"

# mixed_capitals = [{"state" => 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" => "Madrid"}]
# p capital(mixed_capitals)[0] #== "The capital of Maine is Augusta"



# Write a method that takes an array of hashes with two keys each: country or state, and capital. Keys may be symbols or strings

# The method should return an array of sentences declaring the state or country and its capital.

# input:
#   - array of hashes
# output:
#   - array of sentences -> ["The capital of __ is ___", ""]

# rules:
#   - hash key can be a symbol, or a string
#   - when accessing the key, must be able to reference "state", or "country"

# algorithm:
#   - "The capital of #{hash[state/country (symbol or string)]} is #{hash[capital()str or symbol]}"

#   - iterate over array of hashes (map)
#   - for each element (transform into a string at the end of the current iteration), 
#     -  are we dealing with a country, or a state?? ---> OWN METHOD
#     -  init variable state = 'state' if we're dealing with a state.
#     -  init variable country = 'country' if we're looking at a country
#     -  if state = hash[:state], assign state to hash[:state].......etc

  

# def country_or_state(hash)
#   region = hash.keys[0].to_s
# end


# def capital(arr_of_hashes)
#   arr_of_hashes.map! { |k, v| k.to_s }
   
#   arr_of_hashes.map do |hash|
#     case country_or_state(hash)
#     when 'state'
#       if hash[:state]
#         region = hash[:state]
#       else
#         region = hash['state']
#       end
#     when 'country' 
#       if hash[:country]
#         region = hash[:country]
#       else
#         region = hash['country']
#       end
#     end
#     if hash[:capital]
#       capital = hash[:capital]
#     else
#       capital = hash['capital']
#     end
#     "The capital of #{region} is #{capital}."
#   end
    
# end



# # Examples

# state_capitals = [{state: 'Maine', capital: 'Augusta'}]
# p capital(state_capitals)[0] #== "The capital of Maine is Augusta"

# country_capitals = [{'country' => 'Spain', 'capital' => 'Madrid'}]
# puts capital(country_capitals)[0] #== "The capital of Spain is Madrid"

# mixed_capitals = [{"state" => 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" => "Madrid"}]
# p capital(mixed_capitals)[0] == "The capital of Maine is Augusta"








# # Write a method that takes an array of hashes with two keys each: country or state, and capital. Keys may be symbols or strings

# # The method should return an array of sentences declaring the state or country and its capital.

# # input:
# #   - array of hashes
# # output:
# #   - array of sentences -> ["The capital of __ is ___", ""]

# # rules:
# #   - hash key can be a symbol, or a string
# #   - when accessing the key, must be able to reference "state", or "country"

# # algorithm:
# #   - "The capital of #{hash[state/country (symbol or string)]} is #{hash[capital()str or symbol]}"

# #   - iterate over array of hashes (map)
# #   - for each element (transform into a string at the end of the current iteration), 
# #     -  are we dealing with a country, or a state?? ---> OWN METHOD
# #     -  init variable state = 'state' if we're dealing with a state.
# #     -  init variable country = 'country' if we're looking at a country
# #     -  if state = hash[:state], assign state to hash[:state].......etc

  

# def country_or_state(hash)
#   region = hash.keys[0].to_s
# end


# def capital(arr_of_hashes)
#   arr_of_hashes.map! { |k, v| k.to_s }
   
# #   arr_of_hashes.map do |hash|
# #     case country_or_state(hash)
# #     when 'state'
# #       if hash[:state]
# #         region = hash[:state]
# #       else
# #         region = hash['state']
# #       end
# #     when 'country' 
# #       if hash[:country]
# #         region = hash[:country]
# #       else
# #         region = hash['country']
# #       end
# #     end
# #     if hash[:capital]
# #       capital = hash[:capital]
# #     else
# #       capital = hash['capital']
# #     end
# #     "The capital of #{region} is #{capital}."
# #   end
    
# end



# # Examples

# # state_capitals = [{state: 'Maine', capital: 'Augusta'}]
# # p capital(state_capitals)[0] #== "The capital of Maine is Augusta"

# country_capitals = [{'country' => 'Spain', 'capital' => 'Madrid'}]
# puts capital(country_capitals)[0] #== "The capital of Spain is Madrid"

# # mixed_capitals = [{"state" => 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" => "Madrid"}]
# # p capital(mixed_capitals)[0] == "The capital of Maine is Augusta"



### COME BACK TO THIS COME BACK TO THIS COME BACK TO THIS!!!!

# Write a method that takes an array of hashes with two keys each: 
# country or state, and capital. Keys may be symbols or strings

# The method should return an array of sentences 
# declaring the state or country and its capital.
require 'pry'
require 'pry-byebug'

def capital(arr)
  transformed_hash = {}
  arr[0].each { |k, v| transformed_hash[k.to_s] = v }
  # binding.pry
  # ["The capital of #{transformed_hash['state']} is #{transformed_hash['capital']}"]

  transformed_hash.each do |k, v|
    puts "The capital of #{k} is #{v}"
  end
end

state_capitals = [{state: 'Maine', capital: 'Augusta'}]
capital(state_capitals)[0] #== "The capital of Maine is Augusta"

# country_capitals = [{'country' => 'Spain', 'capital' => 'Madrid'}]
# puts capital(country_capitals)[0] #== "The capital of Spain is Madrid"

# mixed_capitals = [{"state" => 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" => "Madrid"}]
# p capital(mixed_capitals)[0] == "The capital of Maine is Augusta"
