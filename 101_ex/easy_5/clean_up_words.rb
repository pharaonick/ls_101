# PROBLEM (incl input, output, rules)
# input: string of words plus non-alphabetic characters
# output: string where non-alphabetic characters are replaced by spaces
# no more than one space in a row




# EXAMPLES/TEST CASES
# cleanup("---what's my +*& line?") == ' what s my line '

# DATA STRUCS


# ALGO


# CODE (with intent!)

def cleanup(string)
  string.gsub(/[\W\d]/, ' ').gsub(/\s+/, ' ')
end

# LS version, cleaner
def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '
cleanup('   what12 is this &&8 0 crap9') == ' what is this crap '


# without regexp 
LETTERS = ('a'..'z')

def cleanup(string)
  transformed_string = string.chars.map do |char|
    LETTERS.include?(char.downcase) ? char : ' '
  end
  transformed_string.join.squeeze(' ')
end

# one line but less clear?
def cleanup(str)
  str.chars.map { |char| ('a'..'z').include?(char.downcase) ? char : ' ' }.join.squeeze(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '
cleanup('   what12 is this &&8 0 Crap9') == ' what is this Crap '

# user solutions
# old skool loop...
ALPHANUMERICS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
                 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
                 'y', 'z', 0, 1, 2 , 3, 4, 5, 6, 7, 8, 9]

def cleanup(str)
  clean_str = ''
  counter = 0
  str.chars.each do |c|
    next if counter > 0 &&
            clean_str[counter - 1] == " " &&
            !(ALPHANUMERICS.include?(c.downcase))
    clean_str[counter] = ALPHANUMERICS.include?(c.downcase) ? c : " "
    counter += 1
  end
  clean_str
end

# ditto
ALPHA_RNG = (65..122) 
NUM_RNG = (0..9)

def cleanup(my_str)
  clean_str = ''
  space_counter = 0
  my_str.split('').each do |char|
    if ALPHA_RNG.include?(char.ord) || NUM_RNG.include?(char.ord)
      clean_str << char
      space_counter = 0
    else
      space_counter += 1
      clean_str << ' ' if space_counter == 1
    end
  end
  clean_str
end









