def alphabetize (arr, rev = false)
  arr.sort! #sort first because otherwise calling reverse will reverse original array
  if rev
    arr.reverse!
  #else
   # return arr # don't seem to need this bit
  end
end

numbers = [3, 6, 5, 1, 9, 7]

alphabetize(numbers, true)

puts numbers

=begin

Do it without the built in reverse method:

def alphabetize (arr, rev = false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1}
  else
    arr.sort { |item1, item2| item1 <=> item2}
  end
end

=end