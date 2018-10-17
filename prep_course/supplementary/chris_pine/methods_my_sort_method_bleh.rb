#bluuuuuuuuuuuurgh


original = ['banana', 'carrot', 'apple']
unsorted = []
sorted = []


original.each do |item|





if original[0] < original[1]
  if original[0] < original[2]
        sorted.push original[0]
        unsorted.push original[1], original[2]
  end
end
if original[1] < original[2]
  if original[1] < original[0]
        sorted.push original[1]
        unsorted.push original[2], original[0]
  end
end
if original[2] < original[0]
  if original[2] < original[1]
        sorted.push original[2]
        unsorted.push original[0], original[1]
  end
end






=begin
if 'banana' < 'carrot'
  if 'banana' < 'apple'
        sorted.push('banana')
        unsorted.push('carrot', 'apple')
  end
end
if 'carrot' < 'apple'
  if 'carrot' < 'banana'
    sorted.push('carrot')
    unsorted.push('apple', 'banana')
  end
end
if 'apple' < 'banana'
  if 'apple' < 'carrot'
    sorted.push 'apple'
    unsorted.push 'banana', 'carrot'
  end
end
=end





puts 'sorted:'
puts sorted
puts
puts 'unsorted:'
puts unsorted

