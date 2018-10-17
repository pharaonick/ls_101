numbers = [5, 9, 21, 26, 39]

div_by_3 = numbers.select { |n| n % 3 == 0 }

p div_by_3