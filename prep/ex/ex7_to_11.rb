#7
# Array: values identified by index. Hash: values identified by key.

#8
# hash_literal = {
#   name: "Jack",
#   age: "34",
#   occupation: "Geezer"
# }

# hash_new = Hash.new
# hash_new[:name] = "Jill"
# hash_new[:age] = "35"
# hash_new[:occupation] = "Geezeress"

# hash_mixed_rocket = {
#   :name => "Jillck",
#   "age" => "69",
#   occupation: "OG" # Don't mix like this in real world
# }

#9
h = { a:1, b:2, c:3, d:4 }

h[:b]

h[:e] = 5

h.delete_if { |k, v| v < 3.5 }
p h

#10
# hash values as arrays
pets = { 
  cats: ['Scratch', 'Sniff', 'Floss'],
  dogs: ['Dobber', 'Zoe'],
  fish: ['Wanda', 'Poke', 'Notmo']
}

# array of hashes
team = [
  { name: 'Bob', age: 'old', title: 'Chief Moaner' },
  { name: 'Barb', age: 'young', title: 'Chief Loaner' },
  { name: 'Kat', age: 'ancienne', title: 'Chief Phoner' }
]

#11 love the core
