def number_size(number)
  if number < 0
    puts "#{number} is below 0... no negs!"
  elsif number <= 50
    puts "#{number} is between 0 and 50, well done"
  elsif number <= 100
    puts "#{number} is between 51 and 100, well done"
  else
    puts "No geez! #{number} is above 100..."
  end
end

def number_size_by_case(number)
  case 
  when number < 0
    puts "#{number} is below 0... no negs!"
  when number <= 50
    puts "#{number} is between 0 and 50, well done"
  when number <= 100
    puts "#{number} is between 51 and 100, well done"
  else
    puts "No geez! #{number} is above 100..."
  end
end

def number_size_by_case_2(number)
  case number
  when 0..50
    puts "#{number} is between 0 and 50, well done"
  when 51..100
    puts "#{number} is between 51 and 100, well done"
  else
    if number < 0
      puts "#{number} is below 0... no negs!"
    else
      puts "No geez! #{number} is above 100..."
    end
  end
end


puts 'enter a number 0 to 100'
number = gets.chomp.to_i

number_size(number)
number_size_by_case(number)
number_size_by_case_2(number)