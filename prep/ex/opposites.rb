def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer1 = nil
integer2 = nil

loop do
  loop do
    puts "Please enter a positive or negative integer."
    integer1 = gets.chomp
    break if valid_number?(integer1)
    puts "No no NO must be a NON-ZERO INTEGER innit"
  end

  loop do
    puts "Please enter a positive or negative integer."
    integer2 = gets.chomp
    break if valid_number?(integer2)
    puts "No no NO must be a NON-ZERO INTEGER innit"
  end

  break if (integer1.to_i < 0 && integer2.to_i > 0) || (integer1.to_i > 0 && integer2.to_i < 0)
  puts "Ah, sorry, forgot to say, one number must be positive and one must be negative.\nPlease start again."
end

puts "#{integer1} + #{integer2} = #{integer1.to_i + integer2.to_i}..."