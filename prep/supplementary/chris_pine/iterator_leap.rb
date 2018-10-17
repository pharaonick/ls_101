puts 'first date please'
first = gets.chomp.to_i
puts 'last date please'
last = gets.chomp.to_i

puts 'HERE WE GO...!'

(first..last).each do |date|
  next if date%4 != 0
  next if date%100 == 0 && date%400 != 0
  puts date
end




  # 4 yes 400 yes 100 no all else no