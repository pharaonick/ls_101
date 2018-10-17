puts 'Hi grandson!'
count = 0
while true
  sentence = gets.chomp
  if sentence == 'BYE!' 
    if count < 2
      puts 'Sorry dear, you can\'t leave yet!'
      count += 1
    else 
      puts 'OK darling see you later then!'
      break
    end
  elsif sentence == sentence.upcase
    puts "NO, NOT SINCE #{rand(21)+1930}!"
    count = 0
  else 
    puts 'HUH?! SPEAK UP SONNY!'
    count = 0
  end
end

=begin
#Could also do by simply counting the BYE

puts 'hey youngun give me a kiss'
count = 0
while true
  sentence = gets.chomp
  if sentence == 'BYE'
    count += 1
  else 
    count = 0
  end
  if count >2
    puts 'Bye darling'
    break
  end
  if sentence != sentence.upcase
    puts 'HUH SPEAK UP'
  else 
    random_year = 1930 + rand(21)
    puts 'NO NOT SINCE ' + random_year.to_s + '!'
  end
end

=end