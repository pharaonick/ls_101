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

# slightly different logic for checking dupes
def crunch(string)
  new_string = ''
  string.each_char { |chr| new_string << chr unless new_string.end_with?(chr) }
  new_string
end

# This builds string with everything in it and then deletes dupes

def crunch(string)
  char_array = string.split('')
  counter = 0 
  loop do 
    char_array[counter]
    if char_array[counter] == char_array[counter + 1]
      char_array.delete_at(counter)
    else 
      counter += 1
    end 
    break if counter >= char_array.size 
  end 
  char_array.join('')
  end

# clever version using reject
def crunch str
  str.chars.reject.with_index {|char, idx| char == str[idx + 1] }.join('')
end

#using regexp
def crunch(string)
  string.gsub(/(.)\1+/, '\1')
end

# can also pass regexp to the while loop as in something like
# str.gsub(/#{string[index]}+/, "#{string[index]}")


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('ggg   hi') == 'g hi'
crunch('a') == 'a'
crunch('') == ''




