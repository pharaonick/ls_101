puts 'what is your start date?'
first = gets.chomp.to_i
puts 'what is your end date?'
last = gets.chomp.to_i

puts 'here we go...'
year = first
until year > last
  if year % 400 == 0
    puts year.to_s 
  elsif ((year % 4 == 0) && (year % 100 != 0))
    puts year.to_s
  end
  year += 1
end










=begin
puts 'what is your start date?'
first = gets.chomp.to_i
puts 'what is your end date?'
last = gets.chomp.to_i

years = last-first
year = first
count = 0

years.times do
  if year % 4 == 0
    count += 1
  end 
  year = year +1
end

puts "there are #{count.to_s} leap years in your selection"



puts 'what is your start date?'
first = gets.chomp.to_i
puts 'what is your end date?'
last = gets.chomp.to_i

year = first
until year > last
  puts year.to_s if year % 4 == 0
  year += 1
end
=end
