# input: string of at least two 'words' (sequence of non-blank chars)
# output: return penultimate word in string

def penultimate(str)
  str.split[-2]
end


penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'


# input: string
# output: middle word of string

# edgies: empty string -- return 'empty string'
# string where no middle -- return both

def middle(str)
  words = str.split

  if words.size == 0
    'empty string provided'
  elsif words.size == 1
    words[0]
  elsif words.size.odd?
    words[(words.size / 2.0).floor]
  else
    words[(words.size / 2) - 1] + ' ' + words[(words.size / 2)]
  end
end

middle('')
middle('hello')
middle('how odd is this then')
middle('not as even as this is')

