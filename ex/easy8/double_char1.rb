# input: string
# output: string where every char doubled
# -- includes spaces
# -- empty string is empty

def repeater(str)
  result = ''
  str.each_char { |char| result << char * 2 } # or result << char << char
  result
end

# cute one liner
def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

# can also use dup and zip!

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''