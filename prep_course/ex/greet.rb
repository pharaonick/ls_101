friends = ['Sarah', 'John', 'Hannah', 'Dave']

for f in friends # note it's more standard to see for friend in friends
  puts "Hello #{f} me ole mucker"
end

#obv alt
friends.each { |f| puts "hey #{f}" }