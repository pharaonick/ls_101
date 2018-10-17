# PROBLEM (incl input, output, rules)
# Write a method that takes an Array of Integers between 0 and 19, 
# and returns an Array of those Integers sorted based on the 
# English words for each number:


# lololololol WHY A HASH??! ARRAY IS PERFECT...
# INTEGER_NAMES = {
#   0 =>  'zero', 
#   1 =>  'one', 
#   2 =>  'two', 
#   3 =>  'three', 
#   4 =>  'four', 
#   5 =>  'five', 
#   6 =>  'six', 
#   7 =>  'seven', 
#   8 =>  'eight', 
#   9 =>  'nine', 
#   10 => 'ten', 
#   11 => 'eleven', 
#   12 => 'twelve', 
#   13 => 'thirteen', 
#   14 => 'fourteen', 
#   15 => 'fifteen', 
#   16 => 'sixteen', 
#   17 => 'seventeen', 
#   18 => 'eighteen', 
#   19 => 'nineteen'
# }

# def alphabetic_number_sort(arr)
#   arr.sort_by { |int| INTEGER_NAMES[int] }
# end

INT_NAMES = %w(zero one two three four five six seven eight 
               nine ten eleven twelve thirteen fourteen fifteen 
               sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |int| INT_NAMES[int] }
end

# Note that we could use the destructive Array#sort! method, but it's not
# good practice to mutate a collection we are iterating through

#using Enumerable#sort
def alphabetic_number_sort(arr)
  arr.sort { |a, b| INT_NAMES[a] <=> INT_NAMES[b] }
end

# lots of people used Enumerable#sort by using Enumerable#each_with_object
# to construct an array of the number names, sorting them, then converting them
# back to digits


alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]








