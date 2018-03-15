# # 1

# # str arg
# # return in reverse
# # can't use reverse

# def reverse!(str)
#   result = ''
#   char = str.chars
  
#   # better done as str.length.times do ... end
#   loop do
#     c = char.pop
#     result << c
#     break if char.empty?
#   end
#   result
# end

# reverse!('string')

## 2
# fizzbuzz

# # could actually map over and transform a range too
# def fizzbuzz(first, last)
#   result = []
#   first.upto(last) do |i| # could use a range
#     if i % 15 == 0
#       result << "fizzbuzz"
#     elsif i % 5 == 0
#       result << "buzz"
#     elsif i % 3 == 0
#       result << "fizz"
#     else
#       result << i
#     end
#   end
#   result.join(', ')
# end

# 3
PRODUCTS = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
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
  { name: "Dell Inspiron", price: 300 },
  { name: "Dell Inspiron", price: 450 }
]

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

# could refactor all as single name && price && price...
# even better to use a price_min..price_max range and call include?
def search(query)
  name_match = PRODUCTS.select do |name, price|
    name[:name].downcase.include?(query[:q])
    end

  name_match.select do |product|
    product[:price] >= query[:price_min] && product[:price] <= query[:price_max]
  end
end

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


# VIDEO 2
#1
# input: array of strings
# output: array of same strings sans vowels

# given array of string
# iterate over array using map
# for each string, replace vowel with ''
#   make sure to account for caps

# can also break into characters and delete

# def unvowel_me(arr)
#   arr.map do |str|
#     str.gsub(/[aeiou]/i, '')
#   end
# end


#2
# input: str with parentheses
# output: boolean -- are parentheses balanced

balancer('hi') == true
balancer('(hi') == false
balancer('(hi)') == true

# break str into chars
# iterate through chars 
# count to see if ( == )

def balancer(str)
  str.count('(') == str.count(')')
end

# bonus: balancer(')hi(') -- false
# -- can't use count method

# return false if index of first ( is lower than first )
# but that doesn't account for lopsided stuff

# construct array using select and then 
# iterate through to check they are reversing...
# but nope because can have (()))(

# ah, use a counter
# +1 for opening, -1 for closing
# if ever hit negative num we have a problem

def balancer(str)
  return false unless str.count('(') == str.count(')')

  count = 0

  str.each_char do |char|
    if char == '('
      count += 1
    elsif char == ')'
      count -=1
    end
    return false if count < 0
  end 
  
  true
end

# better if... statement:
def balancer(str)
  return false unless str.count('(') == str.count(')')

  count = 0

  str.each_char do |char|
    count += 1 if char == '('
    count -=1 if char == ')'
    return false if count < 0
  end 
  
  true
end


# 3
# input: two ints
# output: all primes between the two ints

def prime?(num)
  return false if num < 2
  2.upto(num - 1) do |i|
    return false if num % i == 0
  end
  true
end

# better to use select method?
def find_primes(first, last)
  result = []
  (first..last).each { |num| result << num if prime?(num) }
  result.join(', ')
end


find_primes(3, 10) == '3, 5, 7'














































