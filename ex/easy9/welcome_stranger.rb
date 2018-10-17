# input: array of names, hash of title, occupation
# output: see e.g.

def greetings(arr, hash)
  name = arr.join(' ')
  puts "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

# even better is to call join on the array within the return:
def greetings(arr, hash)
  "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

# pass rubocop by breaking string into a couple of variables and then putsing
# or by saving hash.values.join(' ') to variable too so can make string shorter

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around

