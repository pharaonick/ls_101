def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes' #alt: return true if reply == 'yes' return false if reply == 'no' puts 'Please answer y/n'
      return true
    elsif reply == 'no' 
      return false
    else 
      puts 'Please answer yes or no'
    end
  end
end

likes_it = ask 'do you like eating tacos'

puts "You like eating tacos: #{likes_it}!"

=begin
def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else 
        answer = false
      end 
      break
    else 
      puts 'Please answer yes or no'
    end 
  end
  answer
end

puts 'hello'
ask 'do you like eating tacos'
wets_bed = ask 'do you wet the bed'
puts 'thanks for taking this test'
puts "You wet the bed: #{wets_bed}!"
=end