=begin
print "Tell me something... "
user_input=gets.chomp
user_input.downcase!
if user_input.include? "s"
 user_input.gsub!(/s/, "th")
 puts "I duckified what you wrote: #{user_input}!"
else
 print "No s no mess"
end
=end


print "Tell me something "
user_input=gets.chomp

if user_input.empty?
 print "Please, tell me anything!"
 user_input2=gets.chomp
 user_input2.downcase!
 if user_input2.include? "s" || "ce"
   user_input2.gsub!(/s/, "th")
   user_input2.gsub!(/ce/, "th")
  puts "lol ducked you: #{user_input2}!"
 else 
  puts "no s buster"
 end
elsif user_input.include? "s" || "S" || "ce"
 user_input.gsub!(/s/, "th")
 user_input.gsub!(/S/, "TH")
 user_input.gsub!(/ce/, "th")
 puts "lol duckified: #{user_input}!"
else
 puts "no s no mess ducky"
end