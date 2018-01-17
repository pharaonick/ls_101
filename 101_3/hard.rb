## 3
## A
# def mess_with_vars(one, two, three) # 'one' 'two' 'three'
#   one = two # 'two'
#   two = three # 'three'
#   three = one # 'one'
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# # method variables that were re-assigned remain local to variable
# puts "one is: #{one}" # 'one'
# puts "two is: #{two}" # 'two'
# puts "three is: #{three}" # 'three'

## B
# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" # "one"
# puts "two is: #{two}" # "two"
# puts "three is: #{three}" # "three"

## C
# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" # 'two'
# puts "two is: #{two}" # 'three'
# puts "three is: #{three}" # 'one'

## 4
## is string a valide IP address number
## not returning a false condition, not handling case where more or less than 4 components. Fix!
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".") # => ['10', '4', '5', '11']
  
  return false unless dot_separated_words.length == 4

  word = ''
  while dot_separated_words.size > 0 do
    word += dot_separated_words.shift
  end

  is_an_ip_number?(word)
end

# test cases
# "10.4.5.11" => true
# "4.5.5" => false
# "1.2.3.4.5" => false

## keeping the code more intact (don't get how the provided method works but w/e)
## I guess it's checking each component number?
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end



