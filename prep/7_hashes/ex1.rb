family = { 
  uncles: ['bob', 'joe', 'steve'],
  sisters: ['jane', 'jill', 'beth'],
  brothers: ['frank', 'rob', 'david'],
  aunts: ['mary', 'sally', 'susan']
}

# immediate_family = []

# family.select do |k, v|
#   if k == :sisters
#     immediate_family << v[0..2]
#   end
#   if k == :brothers
#     immediate_family << v[0..2]
#   end
# end

# p immediate_family

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers # this is not a boolean so it's not like it stops after one expression is true
end

new_array = immediate_family.values.flatten # !!!

p new_array # cf p here with puts...