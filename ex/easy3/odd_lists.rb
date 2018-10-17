# Write a method that returns an Array that contains every other element of an Array 
# that is passed in as an argument. 
# The values in the returned list should be those values that 
# are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# input:
# array

# output:
# array containing every other element from original: 1st, 3rd, 5th, etc
# i.e. elements with even index

# test cases / examples
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# Ruby-ish code:

# def oddities(arr)
#   odd_array = []
#   arr.each_index { |i| odd_array << arr[i] if i.even? }
#   odd_array
# end

# def oddities(arr)
#   odd_array = []
#   arr.each_with_index { |el, i| odd_array << el if i.even? }
#   odd_array
# end

# # old-skool code...
def oddities (arr)
  odd_array = []
  count = 0

  while count < arr.size
    odd_array << arr[count]
    count += 2
  end

  odd_array
end


interesting way of tackling...
def oddities(array)
  odd_array = []
  push = true
  array.each do |el|
    odd_array << el if push
    push = !push
  end
  odd_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])


# even version. multiple approaches

def evens(arr)
  even_els = []
  index = 1

  while index < arr.size
    even_els << arr[index]
    index += 2
  end

  even_els
end

def evens(arr)
  even_els = []
  arr.each_with_index { |el, i| even_els << el if i.odd? }
  even_els
end


# THIS WAS WHAT I WAS LOOKING FOR... DON'T MISUNDERSTAND INDEX!!!
def evens(arr)
  arr.select { |el| arr.index(el).odd? }
end


p evens([1, 2, 3, 4, 5])
p evens([1, 2, 3, 4, 5, 6])
p evens(['abc', 'def'])
p evens([123])
p evens([])


