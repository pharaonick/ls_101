puts 'Enter text that needs some redaction action please...'
text=gets.chomp

puts 'What are the words you need to redact?'
redacted=gets.chomp.downcase #note that if you don't split redacted by word, partial word matches will be redacted. eg. this is my text to redact, choose this and text, this is text will all be redacted...

text_array=text.split(' ')

text=''

redacted_words = redacted.split(' ')

redacted_sentence=''

text_array.each do |word|
  if redacted_words.include? word.downcase
    redacted_sentence += 'REDACTED '
  else
    redacted_sentence += word + ' '
  end 
end
  print redacted_sentence