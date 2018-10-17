numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

even_numbers2 = numbers.select {|n| n.even? }

p even_numbers # expected output: [2, 6, 8]
p even_numbers2