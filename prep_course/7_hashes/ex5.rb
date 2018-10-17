# cats = { Ashira: 'cute', Kaia: 'just as cute'}

# puts cats.value?('cute')

# oops supposed to write a method I think...

def cats_has_value?(value)
  cats = { Ashira: 'cute', Kaia: 'just as cute'}
  if cats.value?(value)
    puts "Yup got #{value}"
  else 
    puts "Nope no #{value} here"
  end
end

cats_has_value?('cute')
