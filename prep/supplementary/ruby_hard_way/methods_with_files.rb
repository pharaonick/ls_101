input_file = ARGV.first

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0) # this shunts you back to byte 0 in the file; if you make it 5 it will start 5 bytes in
end

def print_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file:\n"
print_all(current_file)

puts "Now let's rewind..."
rewind(current_file)

puts "Let's print three lines"

=begin
current_line = 1
print_line(current_line, current_file)
current_line += 1
print_line(current_line, current_file)
current_line += 1
print_line(current_line, current_file)
=end

current_line = 1
until current_line > 3
  print_line(current_line, current_file)
  current_line += 1
end

