a = [1, 2, 3]

def mutate(array)
  array.pop # pop mutates the caller
end

p "Before mutate method: #{a}" # ==> [1, 2, 3]
mutate(a)
p "After mutate method: #{a}" # ==> [1, 2]

a = [1, 2, 3]

def no_mutate(array)
  array.last # last method does not mutate the caller 
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}" # ==> same output before and after invocation