#1
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
# => [1, 2, 3]
# because block returns 'hi' for each element, which is truthy, so each 
# element is selected

#2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# evaluates block's return value for truthiness
# returns number of elements for which block returns truthy

#3
[1, 2, 3].reject do |num|
  puts num
end
# => [1, 2, 3]
# 'discards' any element evaluating true and returns new array with remainder
# here, block evaluates to nil, so anything evaluated nil is discarded
# which is nothing, so returned array is actually unchanged

#4
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# => {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
# returns new collection object 
# more 'technical' explanation in notes

#5
hash = { a: 'ant', b: 'bear' }
hash.shift
# => returns [:a, 'ant'] and mutates original to {:b, 'bear'}

#6
['ant', 'bear', 'caterpillar'].pop.size
# => 11
# pop returns 'caterpillar' (and mutates caller)
# 'caterpillar'.size == 11

#7
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
# block return: true or false (return of `num.odd?`, the last evaluated expression in block)
# method return: true, because block returns `true` for two elements
# output: 1
# with `any?`, once a block evaluates to true it stops iterating

#8
arr = [1, 2, 3, 4, 5]
arr.take(2)
# => [1, 2] because they are the first `n` elements from array
# non destructive (test in irb)

#9
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
# => [nil, 'bear']
# transforms **all** elements according to block
# failed `if` condition evaluates to false, but if no conditions 
# in `if` statement evaluate to true, statement itself
# evaluates to `nil`

#10
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
# block's return value: nil, because that's the return
# value when last iteration evaluated
# method returns [1, nil, nil], and outputs 2\n 3

#------------------------------------------------------------------------
## ADDITIONAL PRACTICE
#1
# Turn this array into a hash where the names are the keys 
# and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |el, i|
  flintstones_hash[el] = i
end

p flintstones
p flintstones_hash

# or, though you don't end up with the hash assigned to a variable...

flintstones.each_with_object({}) do |el, hash|
  hash[el] = flintstones.index(el)
end

#2
# add all the ages
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total = 0
ages.each { |_, age| total += age }
p total

# # more idiomatic
ages.values.inject(:+)

# old-skool loop
names = ages.keys
current_name = ''
total_age = 0
count = 0

loop do
  break if count >= names.size

  current_name = names[count]
  total_age += ages[current_name]
  count += 1
end

p total_age

#3
# throw out people 100 or older
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

culled = ages.reject { |k, v| v >= 100 }

p culled
p ages

# or from the other direction
chosen = ages.select { |k, v| v < 100 }

p chosen
p ages

# more accurately, to just mutate this variable
age.keep_if { |_, age| age < 100 }
# keep_if is better than `select!` because `select!` returns `nil` if no changes made

#4
# pick out min age
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# CAUTION! min by what???!

person = ages.min_by { |_, v| v }
puts person[1] # to output age...

# MUCH EASIER!!
ages.values.min # => 10

#5
# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# just returns name...
# be_name = flintstones.detect { |name| name.start_with?('Be') }

flintstones.each_with_index do |name, i|
  p i if name.start_with?("Be")
end

flintstones.select do |name| 
  p flintstones.index(name) if name.start_with?("Be")
end

###### OMG stop adding steps this is how to do it...###############
flintstones.index { |name| name.start_with?("Be") }
# or
flintstones.index { |name| name[0, 2] == "Be" }


# old-skool...
current_name = ''
count = 0

loop do
  break if count >= flintstones.size

  current_name = flintstones[count]
  if current_name.start_with?("Be")
    p count
  end
  count += 1
end

#6
# Amend this array so that the names are all shortened to just the first three characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name = name[0..2] } # or name[0, 3]

#7
# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

frequency = Hash.new(0)

statement.downcase.each_char do |char| # don't downcase if want caps
  next if char == ' '
  frequency[char] += 1
end

puts "my version: #{frequency}"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

puts "LS version: #{result}"

#8
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# 1
# 3
# => [3, 4]

# PASS 1 (INDEX 0)
# prints 1
# returns [1], left with [2, 3, 4]

# PASS 2 (INDEX 1)
# prints 3
# returns [2], left with [3, 4]

# PASS 3 (INDEX 2)
# doesn't exist so iteration over

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# 1
# 2
# => [1, 2]

# index 0 pass
# prints 1
# [4], [1, 2, 3]

# index 1 pass
# prints 2
# [3], [1, 2]

# index 2 pass
# doesn't exist, end

#9
# Write a titleize implementation
# 'the flintstones rock' => 'The Flintstones Rock'

words = 'the flintstones rock'

title_case = words.split.map { |word| word.capitalize }.join(' ')

# note does not need the mutating version of map and capitalize...

#10
# modify so each member has "age_group" key
# values: 'kid' if 0-17, 'adult' 18-64, 'senior' 65+

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def grouping(age)
  if age > 65
    'senior'
  elsif age < 18
    'kid'
  else
    'adult'
  end
end

munsters.each do |name, _|
  munsters[name]['age_group'] = grouping(munsters[name]['age'])
end

# don't forget can use the inner hash as a hash...!
# still iterating based on name...
# so the above can be 
munsters.each do |name, traits|
  traits['age_group'] = grouping(traits['age'])
end


# This is MUCH BETTER

munsters.each do |name, traits|
  case traits['age']
  when (0..17)
    traits['age_group'] = 'kid'
  when (18..65)
    traits['age_group'] = 'adult'
  else
    traits['age_group'] = 'senior'
  end
end
















