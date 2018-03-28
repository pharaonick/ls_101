# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just 
# those words that do not use both letters from any given block. 
# Each block can only be used once.

# Write a method that returns true if the word passed in as an argument 
# can be spelled from this set of blocks, false otherwise.

=begin

input: word
output: true if word can be spelled from blocks, else false
  - each block can only be used once


=end

LETTER_BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
  ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(str)
  str = str.upcase

  LETTER_BLOCKS.each do |pair|
    return false if str.count(pair[0]) > 1 || str.count(pair[1]) > 1
  end

  true
end



block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true