puts 'HEY THERE PEACHES GIVE GRANDMA A KISS!'
bye_count = 0
while true
  said = gets.chomp
  if said == 'BYE'
    bye_count += 1
  else
    bye_count = 0
  end 
  break if bye_count >2
  response = if said != said.upcase
    'SPEAK UP I CAN\'T HEAR YOU!'
  else 
    "NOT SINCE #{rand(1930..1950)}!!"
  end
  puts response
end
puts 'BYE BYE YOUNG ONE'
