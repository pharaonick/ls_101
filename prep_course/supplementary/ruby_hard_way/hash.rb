states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}
cities['NY'] = 'New York' #different way to add
cities['OR'] = 'Portland'

#city in state
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

#state abbreviation
puts '-' * 10
puts "Michigan's abbreviation is #{states['Michigan']}"
puts "Florida's abbreviation is #{states['Florida']}"

#city in state using both hashes
puts '-' * 10
puts "Michigan has #{cities[states['Michigan']]}"
puts "Florida has #{cities[states['Florida']]}"

#every state abbreviation
puts '-' * 10
states.each do |state, abbr|
  puts "#{state} is abbreviated by #{abbr}"
end

#every city in state
puts '-' * 10
cities.each do |abbr, city|
  puts "#{abbr} contains #{city}"
end

#every city and state at same time
puts '-' * 10
states.each do |state, abbr|
  city = cities[abbr]
  puts "#{state} is abbreviated by #{abbr} and contains #{city}"
end

#returns nil because Texas is not a key in states
puts '-' * 10
state = states['Texas']

if !state
  puts "Sorry no Texas!"
end

#default values using ||= with nil result
city = cities['TX']
city ||= 'Does not exist' # conditional assignment, i.e. assign "Does not exist" if not already assigned, which it isn't because it will return as nil here
puts "The city for the state 'TX' is: #{city}"


