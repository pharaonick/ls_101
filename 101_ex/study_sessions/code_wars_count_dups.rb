# Write a function that will return the count of distinct 
# case-insensitive alphabetic characters and numeric digits 
# that occur more than once in the input string. 
# The input string can be assumed to contain only alphabets 
# (both uppercase and lowercase) and numeric digits.

=begin

input: string (only alphanumeric)
output: count of chars that appear more than once
  - case-insensitive
  - 
  
iterate through string and total up no. of chars that have a count > 1
but we don't want to double count... -- push counted to array?

initialize `counted` array
initialize `running_count` as 0
iterate through each char of string
  - increment running_count if count of el > 1 && el is NOT in `counted`
    - put char in counted array


=end

def dup_count(str)
  counted = []
  running_count = 0

  str = str.downcase
  
  str.each_char do |char|
    if str.count(char) > 1 && !counted.include?(char)
      running_count += 1
      counted << char
    end
  end
  running_count
end


p dup_count("abcde") #-> 0 # no characters repeats more than once
p dup_count("aabbcde") #-> 2 # 'a' and 'b'
p dup_count("aabBcde") #-> 2 # 'a' occurs twice and 'b' twice (bandB)
p dup_count("indivisibility") #-> 1 # 'i' occurs six times
p dup_count("Indivisibilities") #-> 2 # 'i' occurs seven times and 's' occurs twice
p dup_count("aA11") #-> 2 # 'a' and '1'
p dup_count("ABBA") #-> 2 # 'A' and 'B' each occur twice

