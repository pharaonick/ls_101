# Write a method that takes a string, 
# and then returns a hash that contains 3 entries: 
# one represents the percentage of characters in the string that are lowercase letters, 
# one the percentage of characters that are uppercase letters, 
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

=begin

input: str of at least one char
output: hash repping percentage of lower, upper, and neither case chars

=end

def letter_percentages(str)
  total_chars = str.length

  percentages = {
    lowercase: str.count('a-z') / total_chars.to_f * 100,
    uppercase: str.count('A-Z') / total_chars.to_f * 100,
    neither: str.count('^a-zA-Z') / total_chars.to_f * 100
  }

  percentages.each_with_object({}) do |(k, v), hash|
    hash[k] = v == v.to_i.to_f ? v.to_i : v
  end
end

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }