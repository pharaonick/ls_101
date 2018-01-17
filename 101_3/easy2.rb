# 1
# See if "spot" is present

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?('Spot') # ages.has_key?('Spot')

ages.member?('Spot')

ages.include?('Spot')

# funky one!
ages.select { |k, v| k == 'Spot'}

# 2
munsters_description = "The Munsters are creepy in a good way."

# Convert original string:

# "The munsters are creepy in a good way."
munsters_description.gsub!('Munsters', 'munsters')
munsters_description.capitalize! # => just does first character in string, not each word... ('words' don't exist in a string...)

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!

# "the munsters are creepy in a good way."
munsters_description.downcase!

# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!

# 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# 4
advice = "Few things in life are as important as house training your pet dinosaur."

# does name "Dino" appear?
advice.match('Dino')

advice.split.include?('Dino')

# 5
# Easier way to write 
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# 6 
# Add "Dino"
flintstones << 'Dino'
# can also use Array#concat and Array#push

# 7 
# add multiple
flintstones << 'Dino' << 'Hoppy'
flintstones.push('Dino', 'Hoppy')
flintstones.concat(['Dino', 'Hoppy']) # or .concat(%w(Dino Hoppy))

# 8
advice = "Few things in life are as important as house training your pet dinosaur."

# use String#slice! to return "Few things in life are as important as "
# leave advice as "house training your pet dinosaur."

advice.slice!(0..38) # => "Few things in life are as important as "
advice # => "house training your pet dinosaur."

advice.slice(0..38) # => "Few things in life are as important as "
advice # => "Few things in life are as important as house training your pet dinosaur."

#BETTER
advice.slice!(0, advice.index('house'))

# 9
statement = "The Flintstones Rock!"

statement.count('t')

# 10
title = "Flintstone Family Members"
# 40 character wide table of members. How do we center the title above it using spaces
title.center(40)



