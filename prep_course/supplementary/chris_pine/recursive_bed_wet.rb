def ask question
  puts question
  reply = gets.chomp.downcase
  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'please answer \'yes\' or \'no\''
    ask question #THIS BIT!
  end
end

ask 'do you wet the bed?'