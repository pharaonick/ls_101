# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the substring begins. 
# his means that all substrings that start at position 0 should come first, 
# then all substrings that start at position 1, and so on. 
# Since multiple substrings will occur at each position, the substrings at 
# a given position should be returned in order from shortest to longest.

=begin

input: string
output: array of all substrings
  - ordered shortest to longest by start index

initialize `results` array
iterate through string
- for each element, push each substring to array
  - el..str[i] where i is index && is equal to or greater than el index (to avoid dups)

=end

def substrings(str)
  results = []

  str.each_char.with_index do |char1, idx1|
    str.each_char.with_index do |char2, idx2|
      results << str[idx1..idx2] if idx2 >= idx1
    end
  end

  results
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


# leading subs just for ref/fun/whatever
def substrings_at_start(str)
  results = []

  str.each_char.with_index do |_, idx|
    results << str[0..idx]
  end
  results
end


substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']




