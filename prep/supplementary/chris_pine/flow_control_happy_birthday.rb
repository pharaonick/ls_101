puts 'What year were you born?'
year = gets.chomp.to_i

puts 'What month?'
month = gets.chomp.to_i
if month == 0
  puts 'Please enter a number'
  month = gets.chomp.to_i
end

puts 'And what day? (Number)'
day = gets.chomp.to_i

birth = Time.local(year, month, day)

age = ((Time.new - birth) / 60 / 60 / 24 / 365).to_i

puts "You are #{age} years old."

age.times {print 'SPANK! '}