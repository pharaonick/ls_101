user_name = ARGV.first #if there is only one argument you have to use this construction
prompt = '> '

puts "hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me, #{user_name}?"
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live,  #{user_name}?"
puts prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have?", prompt # the comma just repeats puts...
computer = $stdin.gets.chomp

puts """
Alright. So you said #{likes} about liking me.
You live in #{lives}. Not sure where that is...
And you have a #{computer} computer. Nice.
""" #Alright will start on the next line...
