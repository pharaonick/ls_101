arr = ['b', 'a']

arr = arr.product(Array(1..3))

# ==> [['b', 1], ['b', 2], ['b', 3], ['a', 1], ['a', 2], ['a', 3]]

arr.first.delete(arr.first.last)

# ==> deleting the last element of the first array from the first array
# i.e. deleting 1?
# ==> 1
# arr is now [['b'], ['b', 2], ['b', 3], ['a', 1], ['a', 2], ['a', 3]]


arr = ['b', 'a']
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

#####################

arr = ["b", "a"]
arr = arr.product([Array(1..3)])

# expands to ['b', 'a'] [[1, 2, 3]]

# evaluates to [['b', [1, 2, 3]], ['a', [1, 2, 3]]]
# because the [1, 2, 3] is itself a single element in an array

arr.first.delete(arr.first.last)
# deleting the last element of the first array from the first array
# i.e deleting [1, 2, 3]
# ==> [1, 2, 3]
# arr is now [['b'], ['a', [1, 2, 3]]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)