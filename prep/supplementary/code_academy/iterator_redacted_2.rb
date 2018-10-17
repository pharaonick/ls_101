puts "Enter your text"
text=gets.chomp #better not to downcase here so you preserve the original capitalization

puts "Enter words to redact separated by spaces"
redact=gets.chomp.downcase

words=text.split(" ")
#redacted_words=redact.split(" ") 
#it's actually better to split though otherwise e.g. 'it' in the original will match vs 'split' as a redacted word

words.each do |word|
  if redact.include? word.downcase #best to check vs downcase here so don't actually have to change the user input to downcase
    word.gsub!(word, "REDACTED")
  end
  print word + ' '
end