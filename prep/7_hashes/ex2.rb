hash1 = { name: 'bob', age: '32', height: '6 ft' }

hash2 = { job: 'lawyer', salary: 'a lot'}

merged_non_destructive = hash1.merge(hash2)
p merged_non_destructive
p hash1

merged_destructive = hash1.merge!(hash2)
p merged_destructive
p hash1

