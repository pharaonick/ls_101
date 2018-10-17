# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end

#   reversed_words.join(' ')
# end

# words[i] is a string so can't add with array#

# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = [words[i]] + reversed_words
#     i += 1
#   end

#   reversed_words.join(' ')
# end

def reverse_sentence(sentence)
  words = sentence.split(' ')

  words.each_with_object([]) { |word, obj| obj.unshift(word) }.join(' ')

end


p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

