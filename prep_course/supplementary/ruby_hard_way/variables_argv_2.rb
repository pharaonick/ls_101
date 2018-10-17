first_nam, middle_nam, last_name = ARGV

puts "Your first name is #{first_nam}." # these variables are entered as arguments on the command line, so don't need to ask for them in-program
puts "Your middle name is #{middle_nam}"
puts "Your last name is #{last_name}."

print 'How old are you? '
age = $stdin.gets.chomp # this variable is requested while the program is running. Note that gets.chomp does not play well with ARGV so need to add $stdin.

age = age.to_i*2

puts "Your doubled age is #{age}."

