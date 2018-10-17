=begin
puts 'hello'
puts 'hi'
puts 'how are you?'
puts "I'm fine"
=end

def say(words)
  puts words
end

say('hello')
say('hi')
say('how are you?')
say("I'm fine")

# With default param

def say(words = 'hello')
  puts words + '.'
end

say() # ==> hello.
# can be written as say

say ('hi') # ==> hi.
# can be written as say 'hi'

