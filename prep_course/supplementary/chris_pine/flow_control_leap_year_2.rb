puts 'pick your start year'
start = gets.chomp.to_i
puts 'pick your end year'
last = gets.chomp.to_i

puts "ok here are your leap years:"

(start..last).each do |year|
  next if year%4 != 0
  next if year%100 == 0 && year%400 != 0
  puts year
end
