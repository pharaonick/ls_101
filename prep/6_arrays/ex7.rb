arr = [1, 2, 3, 4, 5]

new_arr = arr.map { |v| v + 2 }

p arr

p new_arr

# alternative way using each:

# arr = [1, 2, 3, 4, 5]
# new_arr = []

# arr.each { |v| new_arr << v + 2 } # analagous to new_arr.push(v + 2)

# p arr
# p new_arr

