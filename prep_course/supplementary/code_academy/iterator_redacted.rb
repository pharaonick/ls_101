puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(' ') #splits text string into array delimited by " " i.e. in this case by word
text = '' #this empties the text variable so your SENSITIVE SHIT no longer exists (and you no longer need it)

words.each do |word|
  if word != redact
    print word + ' '
  else 
    print 'REDACTED '
  end
end

