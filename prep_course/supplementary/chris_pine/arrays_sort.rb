=begin
all_words = []

while true 
  puts 'enter a word'
  word = gets.chomp
  all_words.push word
  break if word == ''
end

all_words.pop
puts all_words.sort
=end

puts 'enter words for me to sort'
all_words = []

while true
  word = gets.chomp
  break if word == ''
  all_words.push word
end

puts all_words.sort

=begin
The above but with cleaner syntax:

puts 'give me words'
words = []
while true
  word = gets.chomp
  break if word.empty?
  words << word
end
puts words.sort

=end