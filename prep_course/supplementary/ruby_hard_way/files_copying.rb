original_file, new_file = ARGV

puts "Copying from #{original_file} to #{new_file}."

copy = open(original_file).read

puts "FYI: The input is #{copy.length} bytes long."

puts "Does the file_to_create already exist? #{File.exist?(new_file)}"

puts "Ok. Hit RETURN to continue or CTRL-C to abort."
$stdin.gets

paste = open(new_file, 'w')
paste.write(copy)

puts "All done!"

#copy.close # I took these out because was generating error? (after combinging the copy line)
#paste.close




=begin
original_file, new_file = ARGV

puts "Copying from #{original_file} to #{new_file}."

original = open(original_file)
copy = original.read

puts "FYI: The input is #{copy.length} bytes long."

puts "Does the file_to_create already exist? #{File.exist?(new_file)}"

puts "Ok. Hit RETURN to continue or CTRL-C to abort."
$stdin.gets

paste = open(new_file, 'w')
paste.write(copy)

puts "All done!"

original.close
paste.close
=end