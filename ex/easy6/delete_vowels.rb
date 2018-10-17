# input: array of strings
# output: array of same strings but with vowels removed

# iterate over array using map to output new array
# replace vowels with ''... actually, no, delete them using String#delete

def remove_vowels(array)
  array.map { |str| str.delete("aeiouAEIOU") }
end

#using gsub

def remove_vowels(strings)
  strings.map { |str| str.gsub(/[aeiou]/i, '') }
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']