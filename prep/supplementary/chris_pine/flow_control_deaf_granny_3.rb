puts 'HELLO GRANDSON HOW ARE YOU?'
counter = 0

while true
  chat = gets.chomp
  if chat == 'BYE'
    counter += 1
    break if counter > 2
    puts 'OH NO YOU CAN\'T LEAVE YET!'
  else 
    counter = 0
  end
  if chat != chat.upcase
    puts 'SORRY DEAR WHAT WAS THAT?'
  elsif chat != 'BYE'
    puts "YES DEAR, EVERY YEAR SINCE #{rand(1920..1950)}!!"
  end
end
puts 'OK BYE THEN DEAR NO NEED TO SHOUT!'