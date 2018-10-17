def has_lab?(word)
  if word.downcase =~ /lab/
    puts "#{word} has lab"
  else
    puts "#{word} does not have lab"
  end
end

has_lab?('laboratory')
has_lab?('experiment')
has_lab?('Pans Labyrinth')
has_lab?('elaborate')
has_lab?('polar bear')