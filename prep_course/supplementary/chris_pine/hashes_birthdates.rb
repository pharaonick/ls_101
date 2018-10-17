#NEED TO DO THIS EXERCISE USING FILES...
birthdates = {
  'Christopher Alexander' => 'Oct 4 1936',
  'Christopher Lambert' => 'Mar 29 1957',
  'Christopher Lee' => 'May 27 1922',
  'Christopher Lloyd' => 'Oct 22 1938',
  'Christopher Pine' => 'Aug 3 1976',
  'Christopher Plummer' => 'Dec 13 1927',
  'Christopher Walken' => 'Mar 31 1943',
  'The King of Spain' => 'Jan 5 1938'
}

puts 'Whose birthday do you want to know?'
person = gets.chomp

date = birthdates[person].split(' ')

if date[0] == 'Oct' #could also hash this I guess
  date[0] = 10
elsif date[0] == 'Mar'
  date[0] = 3
elsif date[0] == 'May'
  date[0] = 5
elsif date[0] == 'Aug'
  date[0] = 8
elsif date[0] == 'Dec'
  date[0] = 12
elsif date[0] == 'Jan'
  date[0] = 1
end

age_secs = Time.new - Time.local(date[2], date[0], date[1])

age = age_secs / 60 / 60 / 24 / 365


puts "#{person}'s birthday is #{birthdates[person]}. He will be #{age.to_i} years old."

