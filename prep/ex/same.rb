array1 = [1, 5, 9]
array2 = [1, 9, 5]

p array1 == array2

p array1 <=> array2



#other options
array1.eql?(array2)
#to compare each individual element
array1.each_with_index do |x, index| 
  array1[index] == array2[index] ? puts('true') : puts('false')
end
