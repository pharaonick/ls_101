names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} characters"
  rescue
    puts 'uh oh something went wrong'
  end
end

