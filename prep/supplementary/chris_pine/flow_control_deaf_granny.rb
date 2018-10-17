while true
  sentence = gets.chomp
  if sentence == 'BYE!'
    break
  elsif sentence == sentence.upcase
    puts "NO, NOT SINCE #{rand(21)+1930}!"
  else puts 'HUH?! SPEAK UP SONNY!'
  end
end