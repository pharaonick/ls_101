# input: non-empty str
# output: return middle char if str odd length, middle 2 if even
# -- 1 char, return that char

def center_of(str)
  if str.length.odd?
    str[str.length / 2]
  else
    str[str.length / 2 - 1, 2] # this sets length of 2 char from position
  end
end

# might be better to set length variable but w/e

# can use String#slice rather than []

# can also make use of the fact that with odd-sized strings, the result of 
# size/2 and (size-1)/2 will be the same...

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'