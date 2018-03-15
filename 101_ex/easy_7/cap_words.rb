# input: string
# output: string with first char of each word capped

def word_cap(str)
  str.split.each { |word| word.capitalize! }.join(' ')
end

# better as map because transformation
str.split.map { |word| word.capitalize }.join(' ')
str.split.map(&:capitalize).join(' ')


# now try a brute force one
#(can make it easier by downcasing whole thing first...)
def word_cap(str)
  words = str.split
  words.each do |word|
    word[0] = word[0].upcase
    word[1..-1] = word[1..-1].downcase
  end
  words.join(' ')
end

# another longhand but doesn't account for non-letters
lowercase = ('a'..'z').to_a
uppercase = ('A'..'Z').to_a
LOOKUP = uppercase.zip(lowercase).to_h

def word_cap(str)
  arr = str.split.map do |word|
    char_arr = word.split('').map.with_index do |char, i|
      if i == 0
        char = LOOKUP.key(char.downcase)
      else
        char = LOOKUP[char.upcase]
      end
    end
    char_arr.join
  end
  arr.join(' ')
end

# can cap first letter then add slice...

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

