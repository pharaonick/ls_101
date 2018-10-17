names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.pop
#   break if names == []
# end

# better because preserves order and uses correct method

# loop do 
#   puts names.shift
#   break if names.empty?
# end

# very concise
loop { names.empty? ? break : (puts names.shift) }



#without a loop (obv can use methods like each as well)
#puts names.shift until names.empty?