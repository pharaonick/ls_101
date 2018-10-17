puts 'What is your favorite number?'
fave = gets.chomp.to_i
new_fave = fave + 1
puts "Hmm, maybe a better number would be #{new_fave}"
puts 'or, without interpolation'
puts 'hmmmmm, how about ' + new_fave.to_s + '?'