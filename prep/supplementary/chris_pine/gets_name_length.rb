=begin
puts 'What\'s your full name?'
name = gets.chomp
puts 'Whoa, ' + name + ', you have ' + name.length.to_s + ' characters in your name!' # or...
puts "Whoa #{name}, you have #{name.length} characters in your name..."
=end

puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
name_letters = first_name.length + middle_name.length + last_name.length
puts "Whoa #{first_name} #{middle_name} #{last_name}, your full name has #{name_letters} letters in it!" 

=begin
puts 'What\'s your full name?'
name = gets.chomp
words = name.split (' ')
letters = words[0].length + words[1].length + words[2].length
puts "Whoa #{name}, your full name has #{letters} letters in it!"
=end
