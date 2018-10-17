=begin

input: word in form of string
  - what about empty string? assume input always correct
output: boolean -- whether the word can be spelled using the blocks
rules:
  - cannot use both letters from block
  - cannot use block more than once
  - should be case-insensitive

  blocks = {
    'B' => 'O',
    'G' => 'T',
    'V' => 'I',
    'X' => 'K',
    'R' => 'E',
    'L' => 'Y',
    'D' => 'Q',
    'F' => 'S',
    'Z' => 'M',
    'C' => 'P',
    'J' => 'W',
    'N' => 'A',
    'H' => 'U'
  }


mental model:
- iterate through each letter in word making sure 
    - there is no repeated letter
    - the matching letter from the block is not used

algo:
- call upcase on `word` so can forget about case
- check there is no repeated letter by splitting `word` into array 
and confirming this matches the uniq version of the array
  - if it doesn't match, return false
- iterate through each letter in `word`
  - if letter is a key in `blocks`, return false if `word` includes corresponding value
  - if letter is value in `blocks`, return false if `word` includes corr key
- return true

=end

BLOCKS = {
  'B' => 'O',
  'G' => 'T',
  'V' => 'I',
  'X' => 'K',
  'R' => 'E',
  'L' => 'Y',
  'D' => 'Q',
  'F' => 'S',
  'Z' => 'M',
  'C' => 'P',
  'J' => 'W',
  'N' => 'A',
  'H' => 'U'
}

#ugly but w/e...
# def block_word?(word)
#   word = word.upcase
#   return false unless word.chars == word.chars.uniq

#   word.each_char do |char|
#     if BLOCKS.key?(char)
#       return false if word.include?(BLOCKS[char])
#     elsif BLOCKS.value?(char)
#       return false if word.include?(BLOCKS.key(char))
#     end
#   end
#   true
# end

# #LS solution v cool
# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end



p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
p block_word?('baby') #== false

