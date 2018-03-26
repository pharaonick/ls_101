# input: 2 strings
# output: true if substring appears in both strings
# only care about substrings > 1 letter
# case irrelevant

# find substrings of each strings then compare all

# construct empty array
# for each char in str add str[0..index] to array

# then begin again from next char to get all

# require 'pry'
# require 'pry-byebug'

# def substrings_from_start(str)
#   subs = []
#   str.chars.each_with_index do |char, i|
#     subs << str[0..i]
#   end
#   subs
# end

# def all_substrings(str)
#   all_subs = []
  
#   str.chars.each_with_index do |char, i|
#     all_subs << substrings_from_start(str[i..-1])
#   end
#   all_subs.flatten.delete_if { |el| el.length < 2 }
# end

# def substring_test(str1, str2)
#   # binding.pry
#   subs_str1 = all_substrings(str1)
#   subs_str2 = all_substrings(str2)

#   subs_str1.each do |substring1|
#     subs_str2.each do |substring2|
#       return true if substring1.downcase == substring2.downcase
#     end
#   end
#   false
# end


# # combo method via Srdjan ****************
# def substrings(str)
#   result = []
#   0.upto(str.size - 2) do |start_idx|
#     1.upto(str.size - 1) do |end_idx|
#       result << str[start_idx..end_idx] if end_idx > start_idx
#     end
#   end
#   result
# end



# receiving two strings, return true if there is a substring present in both
# - case is irrelevant
# - we only care about substrings of more than one letter


# str1, str2
# compare str1 substring 1 to all str2 substrings
#   - return true if any match
# then compare str1 substring 2 to all str2 substrings
# etc

# str1[0..1] vs:
#   - str2[0..1], [0..2]..[0..str2.length-1]
#   - str2[1..2]..[1..str2.length-1]


# str1[0..2] vs:
#   - str2[0..1]..[0..str2.length-1]



  


def substrings(str)
  substrs = []
  characters = str.chars
  
  characters.each_with_index do |char1, i1|
    characters.each_with_index do |char2, i2|
      possible_sub = str[i1..i2]
      substrs << possible_sub.downcase if possible_sub.length > 1
    end
  end
  
  substrs
end

def substring_test(str1, str2)
  substrings(str1).each do |sub|
    return true if substrings(str2).include?(sub)
  end
  false
end

p substring_test('Something', 'Fun') #== false
p substring_test('Something', 'Home') #== true
p substring_test('Something', 'Fun') #== false
p substring_test('Something', '') #== false
p substring_test('', 'Something') #== false
p substring_test('BANANA', 'banana') #== true
p substring_test('test', 'lllt') #== false
p substring_test('', '') #== false
p substring_test('1234567', '541265') #== true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou')  #== true