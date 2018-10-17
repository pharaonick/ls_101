# input: string
# output: new string. upper--> lower, lower--> upper. all others unchanged
# can't use swapcase

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swapcase(str)
  transformed_array = str.chars.map do |char|
    if LOWERCASE.include?(char)
      char.upcase
    elsif UPPERCASE.include?(char)
      char.downcase
    else
      char
    end
  end
  transformed_array.join # defaults to join('')
end

# can do same as above but instead of calling include? on an array
# we can say if char =~ /[a-z]/ ...


# can use gsub as well and test to see if el == el.downcase in order to 
# figure out how to transform

# can do concise one-liner using str.chars.map & char.match(regexp)

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'