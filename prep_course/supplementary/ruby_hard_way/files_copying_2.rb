original_file, new_file = ARGV

original = open(original_file).read

puts "Copying from #{original_file} (#{original.length} bytes long) to #{new_file}. #{new_file} already exists? #{File.exist?(new_file)}"

open(new_file, 'w').write(original)

puts 'DONE!'

#original.close THESE CAUSE ERRORS... WHY?
#new_file.close
