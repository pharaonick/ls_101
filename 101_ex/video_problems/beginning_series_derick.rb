# 1
# write a method that takes a string as argument
# return string in reverse order but you cannot use built-in reverse method

# new string?

# convert str to array of chars
# iterate through array, adding each element to BEGINNING of new array
# convert array back to string


def reverse(str)
  str.chars.each_with_object([]) { |char, arr| arr.unshift(char) }.join
end

# can also pop off final element and append
# note do NOT mutate the array iterating through...

reverse('hello') == 'olleh' 
reverse('two words') == 'sdrow owt' 
reverse('12345') == '54321' 
reverse('') == ''

##########

# 2
# Fizz buzz
# Write a method that takes two args.
# The first is the starting num, and the second the ending num.
# Print all nums between the two.
# EXCEPT
# if the num is divisible by 3 print 'Fizz'
#   by 5 print 'Buzz'
#   by 3 and 5 print 'FizzBuzz'


# print on one line all nums between first and last
# except num % 3 == 0 -> 'fizz'
# 5 -> 'buzz'
# 15 -> 'fizzbuzz'

# create results array
# iterate through all numbers between first and last
# if divisible by 15 add fizzbuzz to results
#   by 3 add fizz
#   by 5 add buzz
# else add num 
# call join on results to get a one-line print out delimited by ', '

# note the only reason we have to do it like this
# is so the output is formatted correctly
# otherwise could just output as we go

def fizzbuzz(first, last)
  results = []
  first.upto(last) do |i|
    if i % 15 == 0
      results << 'FizzBuzz'
    elsif i % 5 == 0
      results << 'Buzz'
    elsif i % 3 == 0
      results << 'Fizz'
    else
      results << i
    end
  end
  results.join(', ')
end


# could also construct a range and iterate through
# it using each

##########

# 3
# each product repped by hash in array

PRODUCTS = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 }, ###
  { name: "Thinkpad x250", price: 979 },
  { name: "Thinkpad x230", price: 300 },
  { name: "Thinkpad x230", price: 330 },
  { name: "Thinkpad x230", price: 350 },
  { name: "Thinkpad x240", price: 700 },
  { name: "Macbook Leopard", price: 300 },
  { name: "Macbook Air", price: 700 },
  { name: "Macbook Pro", price: 600 },
  { name: "Macbook", price: 1449 },
  { name: "Dell Latitude", price: 200 },
  { name: "Dell Latitude", price: 650 },
  { name: "Dell Inspiron", price: 300 }, ###
  { name: "Dell Inspiron", price: 450 } ###
]

# filtering criteria for search
query = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

query2 = {
  price_min: 300,
  price_max: 450, 
  q: 'dell'
}

# input: hash of search criteria
# output: array of matching machines (each element will be a hash)

# iterating over PRODUCTS array, selecting any element matching the search_criteria
# (price_min..price_max) must include machine :price 
# machine :name must include :q

def search(criteria)
  PRODUCTS.select do |machine|
    (criteria[:price_min]..criteria[:price_max]).include?(machine[:price]) &&
    machine[:name].downcase.include?(criteria[:q])
  end
end

search(query) == [ { name: 'Thinkpad x220', price: 250 } ]
search(query2) == [ { name: 'Dell Inspiron', price: 300 }, { name: 'Dell Inspiron', price: 450 } ]


# Good to really break this down:
# 1. print something
# 2. print all the PRODUCTS
# 3. print each el in PRODUCTS
# 4. print out each el less than 350 in price
# 5. start to incorporate query criteria 
#   -- just max price
#   -- then add one more query criteria at a time

# ^ allows two things:
# 1. breaking problem down into manageable chunks
# 2. by continually running code, you can confirm it works and it's easier to debug

# being able to break problem down and explore it is KEY
# (in job interviews will often get a problem you are not expected
# to be able to solve!)































