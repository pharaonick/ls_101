=begin
input = ''
while input != 'bye'
  puts input
  input = gets.chomp
end
puts "OK see you soon!"
=end
=begin
while true
  input = gets.chomp
  puts input
  if input == 'bye'
    break
  end
end
puts 'OK byeeeeee'
=end

=begin while true
  input = gets.chomp
  if input == 'bye'
    puts 'OK byeeeeee'
    break
  else puts input
  end
end
=end

while true
  input = gets.chomp
  puts input
  if input == 'end'
    break
  end
end
puts 'bye then'
