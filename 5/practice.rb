#1
#How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr.map(&:to_i).sort { |a, b| b <=> a }

# or 
arr.sort { |a, b| b.to_i <=> a.to_i }

#-------------------------------------------------------------------------------

#2
# How would you order this array of hashes based on the year 
# of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |hash|
  hash[:published].to_i 
end
# don't actually need to convert to integers because all strings same length...

#-------------------------------------------------------------------------------

#3
# For each of these collection objects 
# demonstrate how you would reference the letter 'g'

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0)
#or
hsh2[:third].keys[0]

#-------------------------------------------------------------------------------

#4
# For each of these collection objects where the value 3 occurs, 
# demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

#-------------------------------------------------------------------------------

#5
# Given this nested Hash, 
# figure out the total age of just the male members of the family.
# - select just males
# - collect ages
# - add them up
# - only need to deal with values since don't care who age belongs to

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

ages_array = munsters.values.each_with_object([]) do |values, arr|
  arr << values['age'] if values['gender'] == 'male'
end

ages_array.sum #=> 444

#LS solution skips the array and accesses values directly
total_male_age = 0

munsters.each_value do |values|
  total_male_age += values['age'] if values['gender'] == 'male'
end

total_male_age #=> 444

#-------------------------------------------------------------------------------

#6
# One of the most frequently used real-world string properties is that of 
# "string substitution", where we take a hard-coded string and modify it 
# with various parameters from our program.

# Given this previously seen family hash, 
# print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# example:
# (Name) is a (age)-year-old (male or female).

munsters.each do |name, attributes|
  puts "#{name} is a #{attributes['age']}-year-old #{attributes['gender']}."
end
# note that calling Hash#each_pair can perhaps make it clearer what is going on?

#-------------------------------------------------------------------------------

#7
# Given this code, what would be the final values of a and b? 
# Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b] # => [2, [5, 8]]

arr[0] += 2 # => [4, [5, 8]] 
arr[1][0] -= a # => [4, [3, 8]]

# a => 2
# b => [3, 8]

#-------------------------------------------------------------------------------

#8
# Using the each method, 
# write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.values.flatten.join.chars.each do |char|
  puts char if %w(a e i o u).include?(char)
end

#using nested iteration...
hsh.each do |_, strings|
  strings.each do |word|
    word.chars.each do |char|
      puts char if %w(a e i o u).include?(char)
    end
  end
end

# # can actually set vowels up as a string and check like that:
# vowels = 'aeiou'
# puts char if vowels.include?(char)
# # DON'T FORGET STRING HAS AN INCLUDE? METHOD...

#-------------------------------------------------------------------------------

#9
# Given this data structure, return a new array of the same structure 
# but with the sub arrays being ordered (alphabetically or numerically 
# as appropriate) in descending order.

# arr where each el is an array
# no need to test for type because integers default to numerically and 
# strings to alphabetically

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

#-------------------------------------------------------------------------------

#10
# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure 
# to the original but where the value of each integer is incremented by 1.

# data struc: [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# # NO GOOD BECAUSE HASH VALUES RETURNING ARRAY...
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
#   hash.values.map do |num|
#     num += 1
#   end
# end
# # => [[2], [3, 4], [5, 6, 7]] 

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.each_with_object({}) do |(sym, num), sub_hash|
    sub_hash[sym] = num + 1
  end
end

# LS gives a more long form version of my solution, where the 
# hash is declared separately and expxlicitly returned, rather than 
# passing it in as an argument to the method
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  new_hash = {}
  
  hash.each do |k, v|
    new_hash[k] = v + 1
  end
  
  new_hash
end

# Using each_with_object instead of map
# (note that in this particular instance map is prolly better because we
# know it will return an array anyway, so no need to pass it in as arg)
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

#-------------------------------------------------------------------------------

#11
# Given the following data structure use a combination of methods, 
# including either the select or reject method, to return a new array identical in structure 
# to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |el|
    el % 3 == 0 
  end
end
# good example of variable naming...
# el would be better as num, since num%3 makes sense...

# using reject
# though tough to parse since reject and != seem like double negative...
arr.map do |el|
  el.reject do |num|
    el % 3 != 0
  end
end

#-------------------------------------------------------------------------------

#12
# Given the following data structure, and without using the Array#to_h method, 
# write some code that will return a hash where the key is the first item in each sub array 
# and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# target_hash = {
#   a: 1,
#   'b' => 'two',
#   'sea' => {c: 3},
#   {a: 1, b: 2, c: 3, d: 4} => 'D'
# }

arr.each_with_object({}) do |sub_arr, hash|
  hash[sub_arr[0]] = sub_arr[1] # NOTE position of brackets for assigning hash key
end

# initializing hash separately
hash = {}

arr.each do |sub_arr|
  hash[sub_arr[0]] = sub_arr[1]
  hash
end

#-------------------------------------------------------------------------------

#13
# Given the following data structure, return a new array 
# containing the same sub-arrays as the original but ordered logically 
# according to the numeric value of the odd integers they contain.

# - arrays compared per element basis
# - sort at top level to preserve structure?
# - need to skip evens

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# target result
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr.sort_by do |item|
  item.select do |num|
    num.odd?
  end
end

# AGAIN... look at your namings. Here it DOES make sense to use 
# sub_arr vs item, since we are treating it as an array...

#-------------------------------------------------------------------------------

#14
# Given this data structure write some code to return an array containing 
# the colors of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# target:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# - work with values only -- array of hashes
# - map will return an array
# - if type: fruit, return colors capitalized
# else return size uppercase

def capitalize_color(arr)
  arr.map { |color| color.capitalize }
end

hsh.values.map do |details|
  details[:type] == 'fruit' ? capitalize_color(details[:colors]) : details[:size].upcase
end

# all in one go...
hsh.values.map do |details|
  case details[:type]
  when 'vegetable'
    details[:size].upcase
  when 'fruit'
    details[:colors].map { |color| color.capitalize }
  end
end

# no need for case statement, just do elsif and end
# plus no need to call values on hash since we are accessing keys directly...:
hsh.map do |_, details|
  if details[:type] == 'fruit'
    details[:colors].map { |color| color.capitalize }
  elsif details[:type] == 'vegetable'
    details[:size].upcase
  end
end

#-------------------------------------------------------------------------------

#15
# Given this data structure write some code to return an array which 
# contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# {a: [1, 2, 3]} #=> [[1, 2, 3]]
# {b: [2, 4, 6], c: [3, 6], d: [4]} #=> [[2, 4, 6], [3, 6], [4]]
# {e: [8], f: [6, 10]} #=> [[8], [6, 10]]

# one of the tricky things here is that if we combine the even check with select 
# we run into the problem of select (and reject) returning empty collections if criteria not met
# so have to separate
# AAAAAAAAAAGGGGGGHHHHHH not true just nest the all calls...!

def all_nums_even?(hash)
  hash.values.flatten.all? {|num| num.even? }
end

arr.select do |item|
  all_nums_even?(item)
end

# LS solution with nested alls makes more sense
arr.select do |hash|
  hash.all? do |k, v|
    v.all? do |num|
      num.even?
    end
  end
end

#-------------------------------------------------------------------------------

#16
# Write a method that returns a UUID when called with no parameters
# UUID is 32 hexadecimal characters, broken up 8-4-4-4-12, e.g.
# f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91

def generate_uuid
  hex = []
  (0..9).each { |i| hex << i.to_s }
  ('a'..'f').each { |l| hex << l }

  result = []
  sections = [8, 4, 4, 4, 12]

  sections.each do |num|
    num.times do 
      result << hex[rand(16)]
    end
    result << '-'
  end

  result.join.chop
end

# REFACTOR!!!!!!!

def generate_uuid
  hex = []
  (0..9).each { |i| hex << i.to_s }
  ('a'..'f').each { |l| hex << l }

  uuid = ''
  sections = [8, 4, 4, 4, 12]

  sections.each do |num|
    num.times { uuid += hex.sample }
    uuid += '-' unless num == 12
  end

  uuid
end

# if you do it as sections.each_with_index then the no '-' test can
# be unless index >= sections.size -1 (i.e. the final index)

# most normal way I could think of at first...
HEX = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def create_uuid
  arr = []
  
  32.times { arr << HEX.sample }
  
  arr.join.insert(8, '-').insert(13, '-').insert(18, '-').insert(23, '-')
end

#refactored based on LS insight
def create_uuid
  uuid = ''
  sections = [8, 4, 4, 4, 12]

  sections.each do |section|
    section.times { uuid += HEX.sample }
    uuid += '-' unless section == 12
  end
  
  uuid
end















































