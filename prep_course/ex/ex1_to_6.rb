arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#1
# arr.each { |v| p v }

#2
# arr.each { |v| p v if v > 5 }

#3
# new_array = arr.select { |v| v.odd? }
# p new_array

#4
arr << 11
arr.unshift(0)
p arr
p '-----'

#5
arr.pop
arr << 3
p arr
p '-----'

#6
arr.uniq!
p arr
