# Build a program that displays when the user will retire and 
# how many years she has to work till retirement.

# input:
# age - integer
# age to retire - integer

# output:
# current year - integer / date
# retirement year - integer / date
# years left of work - integer

# rules:
# no validate ... but how could we validate for negative time...?

# test cases:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!


# pseudo code:
# PRINT what is your age
# SET age, convert to integer
# PRINT what age do you want to retire at
# SET age_to_retire, convert to integer
# SET current_year as current year... Time.now.year
# SET years_left as age_to_retire - age
# SET retirement_year as current_year + years_left
# PRINT the deets

# code:

# puts "Hi how old are you?"
# current_age = gets.chomp.to_i
# puts "What age do you want to retire at?"
# age_to_retire = gets.chomp.to_i

# current_year = Time.now.year
# years_left = age_to_retire - current_age
# retirement_year = current_year + years_left

# puts "It's #{current_year}. You will retire in #{retirement_year}."
# puts "You have only #{years_left} years of work to go! LOL."

# validate for retiring in past

def retirement_date(age, target_age)
  current_year = Time.now.year
  years_left = target_age - age
  retirement_year = current_year + years_left

  puts "It's #{current_year}. You will retire in #{retirement_year}."
  puts "You have only #{years_left} #{years_left == 1 ? "year" : "years"} of work to go! LOL."
end

puts "Hi how old are you?"
current_age = gets.chomp.to_i

age_to_retire = ''
loop do
  puts "What age do you want to retire at?"
  age_to_retire = gets.chomp.to_i

  break if age_to_retire > current_age

  puts "You plan to retire in the past?! Are you already retired? (y/n)"
  retired = gets.chomp.downcase

  if retired == 'y'
    puts "Oh, well congratulations then!"
    exit
  end

end

 retirement_date(current_age, age_to_retire)

















