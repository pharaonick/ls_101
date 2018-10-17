# LOOPING THROUGH COLLECTION OLD SKOOOOOOOL
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char    # appends current_char into the selected_chars string
  end

  counter += 1
  break if counter == alphabet.size
end

selected_chars # => "g"

# ----------------------------------------------------

# ITERATING THROUGH A HASH

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# 'ruby way'
def select_fruit(hash)
  hash.select { |k, v| v == 'Fruit' }
end

# deconstructed way
def select_fruit(hash)
  counter = 0
  produce_array = hash.keys
  fruity_hash = {}

  loop do
    current_item = produce_array[counter]

    if hash[current_item] == "Fruit"
      fruity_hash[current_item] = "Fruit"
    end

    counter += 1
    break if counter >= produce_array.size # THIS CAN'T GO HERE! What is original hash is empty???!!
  end

  fruity_hash
end

p select_fruit(produce) 

# very slightly different... though mainly in naming
def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size      

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

# ----------------------------------------------------

# LONGHAND ARRAY TRANSFORMATION: 
def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

# MUTATING VERSION

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2 # numbers[counter] *= 2

    counter += 1
  end

  numbers
end

# ----------------------------------------------------

# this method doubles only the odd numbers in the given array
# it's non mutating
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

# what about doubling numbers with odd indices (not odd values)
# note that rather than setting current_number var could just 
# test via if condition, though ends up being just as much code 
# and probably harder to understand...

def double_if_odd_index(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

# update doubling method so now can multiply by any value
def multiply(numbers, multiplier)
  transformed = []
  count = 0

  loop do
    break if count >= numbers.size

    transformed << numbers[count] * multiplier
    count += 1
  end

  transformed
end






















