puts 'Please enter the text to be redacted'
words = gets.chomp.split(' ')

puts 'Please enter the words to redact'
redact = gets.chomp.split(' ')

status = false
redacted_string = ''

for word in words
  for redaction in redact
    if word.downcase == redaction
      status = true
      break
    end
  end
  if status == false
    redacted_string += word + ' '
  else
    redacted_string += 'REDACTED '
  end
  status = false
end

print redacted_string
