loop do
  puts 'do you want to do that again?'
  answer = gets.chomp.downcase
  if answer != 'y'
    break
  end
end