pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = pets[2]
# puts "i have a pet #{my_pet}"

my_pets = pets[2..3] # OR pets[2, 3]

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}."

my_pets.pop

# puts "I have a pet #{my_pets[0]}."

#my_pets.push(pets[1]) 
my_pets << pets[1]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}."

#interesting way of printing all items in array no matter how many there are
#though the print messes up the line breaks
print "I have a "
my_pets.each do |pet|
  print "pet #{pet}"
  print " and a " unless pet == my_pets.last
end