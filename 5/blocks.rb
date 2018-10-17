[ [[1], [2], [3], [4]], [['a'], ['b'], ['c']] ].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

#element1
[[1], [2], [3], [4]].each do |element2|
  element2.partition do |element3|
    element3.size > 0
  end
end

#element2
[2].partition do |element3|
  element3.size > 0
end
# => [[2], [0]]


element example breakdown:
element1: [ [1], [2], [3], [4] ]

element2: [1]

element3: 1

Note:
string.size => length of string
integer.size => bytes in machine rep of int 

