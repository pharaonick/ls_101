USERNAME = 'Bob'
PASSWORD = 'letmein'

loop do 
  puts "Please enter your username"
  user = gets.chomp
  puts "Please enter your password (case sensitive)"
  pass = gets.chomp
  break if user.capitalize == USERNAME && pass == PASSWORD
  puts "Authorization failed...Please try again..."
end

puts "Welcome to Secret Place"


# user solution that stores users in hash and validates that way
# User_hash = {Scott: 'pword1234', Tom: 'abc123', Guest: ''}

# loop do 
# puts "Please enter your username:"
# usn = gets.chomp.to_sym
# puts "Please enter your password:"
# pass = gets.chomp

# break if User_hash[usn] == pass
# puts "Authentication failed. Please sign in."
# end

# puts 'Welcome'



