puts 'Enter the text to analyze'
text = gets.chomp.split(' ')

freq = Hash.new(0)

text.each { |word| freq[word] += 1 }

freq = freq.sort_by { |a,b| b}
freq.reverse!
freq.each { |word, frequency| puts word + ' ' + frequency.to_s }

