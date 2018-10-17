puts "hi what's your noun?"
noun = gets.chomp

puts "and a verb"
verb = gets.chomp

puts "adjective?"
adj = gets.chomp

puts "and finally an adverb"
adv = gets.chomp

puts "Do you #{verb} your #{adj} #{noun} #{adv}? lolol wut"



love this version!
def madlib
  noun, verb, adj, adv = %w[noun verb adjective adverb].map do |word_type|
    puts "Please enter a#{'n' if word_type[/\Aa/]} #{word_type}:"
    gets.chomp
  end
  puts format("Do you %s your %s %s %s? That's hilarious!", verb, adj, noun, adv)
end