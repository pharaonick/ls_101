# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |k, v|
#   puts "A #{k} number is #{v}."
# end

#unnecessary conditional:
# numbers.each do |k, v|
#   if v > 50
#     puts "A big number is #{v}."
#   elsif v > 10 
#     puts "A middle number is #{v}."
#   else
#     puts "A little number is #{v}."
#   end
# end

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

# half_numbers = numbers.map { |k, v| v / 2 }
# p half_numbers

# low_numbers = numbers.select { |k, v| v < 25 }
# p low_numbers

#Note that we create an alias here - both numbers and low_numbers point to the same place - so this is non bueno
low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers