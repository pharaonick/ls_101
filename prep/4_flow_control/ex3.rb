puts 'enter a number between 0 and 100'
number = gets.chomp.to_i

if number < 0
  puts 'No negatives!'
elsif number <= 50
  puts 'You chose a number between 0 and 50'
elsif number <= 100
  puts 'You chose a number between 51 and 100'
elsif number > 100
  puts 'Nothing above 100!'
else
  puts 'WUT?' # ah, this will never run because .to_i method will return 0 for text
end
