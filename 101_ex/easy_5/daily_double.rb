# PROBLEM (incl input, output, rules)
# Write a method that takes a string argument and returns a 
# new string that contains the value of the original string 
# with all consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

# input: string
# output: new string with consecutive duplicate characters collapsed into one
# can't use squeeze

# EXAMPLES/TEST CASES
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('ggg   hi') == 'g hi'
# crunch('a') == 'a'
# crunch('') == ''

# ALGO
# set empty new string, str_deduped
# iterate through original str using String#each_char.with_index
# if char does not equal previous char, add to str_deduped 
#   char != str[i-1]


# CODE (with intent!)

def crunch(str)
  str_deduped = ''

  str.each_char.with_index do |char, index|
    if index == 0
      str_deduped += char
    elsif char != str[index-1]
      str_deduped += char
    end
  end

  str_deduped
end

# better to check index ahead...

def crunch(str)
  str_deduped = ''

  str.each_char.with_index do |char, index|
    if char != str[index + 1]
      str_deduped += char
    end
  end

  str_deduped
end

# also, can just make it a simple while loop
def crunch(str)
  str_deduped = ''
  index = 0

  while index < str.length
    str_deduped << str[index] unless str[index] == str[index + 1]
    index += 1
  end

  str_deduped
end


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('ggg   hi') == 'g hi'
crunch('a') == 'a'
crunch('') == ''




