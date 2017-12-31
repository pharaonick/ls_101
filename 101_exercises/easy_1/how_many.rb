# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

# Once counted, print each element alongside the number of occurrences.

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2



# input: array of vehicles, with one or more of each vehicle type
# output: each vehicle with number of occurrences
# rules: 

# test cases: see above

# data structures: output as hash: vehicle => count


# pseudo code:
# create empty hash to store output
# iterate through array
#   if element does not exist as hash key, add element as hash key and set value to 1. 
#     if element does exist as hash key, increase value by 1.
    

# formal pseudo code:
# START
# given an array of vehicles, vehicles
# SET vehicles_count = new hash with default value of nil
# FOR EACH element in vehicles array
#   IF element is not a key in vehicles_count
#     ADD element: 1 to the hash
#   ELSE 
#     increase hash[element] by 1

# CODE:

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

#unnecessarily verbose and complex... See below
# def count_occurrences(vehicles)
#   vehicles_count = Hash.new(nil)

#   vehicles.each do |vehicle|
#     if vehicles_count[vehicle].nil? 
#       vehicles_count[vehicle] = 1
#     else
#       vehicles_count[vehicle] += 1
#     end
#   end

#   vehicles_count.each { |k, v| puts "#{k} => #{v}" }
# end

# count_occurrences(vehicles)

#better:
def count_occurrences(vehicles)
  vehicles_count = Hash.new(0)

  vehicles.each { |vehicle| vehicles_count[vehicle] += 1 }

  vehicles_count.each { |k, v| puts "#{k} => #{v}" }
end

# count_occurrences(vehicles)

# # using Array#count
def count_occurrences(vehicles)
  occurrences = {}
  
  vehicles.each do |el|
    occurrences[el] = vehicles.count(el)
  end

  occurrences.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences(vehicles)

# faster on large arrays because not iterating over duped elements?
# uniq returns new array, but still have to iterate over original 
# array to get the count?

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)


# select everything that matches the first element and save to new array
# puts
# delete the first element from the original array. Repeat until empty.
# (keeps creating new arrays?)

def count_occurrences(arr)
  until arr.empty?
    occurrences = arr.select { |elem| elem == arr.first }
    puts "#{occurrences.first}: #{occurrences.length}"
    arr.delete(arr.first)
  end
end

count_occurrences(vehicles)

#combining uniq and count to create super concise solution
def count_occurrences(vehicles)
  vehicles.uniq.each do |item|
    puts "#{item} => #{vehicles.count(item)}"
  end
end

count_occurrences(vehicles)
