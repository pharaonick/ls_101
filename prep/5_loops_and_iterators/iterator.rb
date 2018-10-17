names = ['bob', 'jack', 'jen', 'harry', 'holly']

# names.each { |name| puts name }

x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end