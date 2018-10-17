movies = {
  bond: 4,
  sinbad: 3,
  gladiator: 5
}

puts "What do you want to do? add, edit, remove, list"
choice = gets.chomp.downcase

case choice
  when "add"
  puts "Enter the movie's name"
  name = gets.chomp.downcase.to_sym
  if movies[name].nil?
    puts "What is the rating? 1 to 5"
    rating = gets.chomp.to_i
    movies[name] = rating
  else
    puts "That movie already exists..."
  end
  
  when "edit"
  puts "What movie do you want to edit"
  name = gets.chomp.downcase.to_sym
  if movies[name].nil?
    puts "But that movie doesn't exist; add it first..."
  else
    puts "What is the new rating?"
    rating = gets.chomp.to_i
    movies[name] = rating
  end

  when "remove"
  puts "What movie do you want to remove?"
  name = gets.chomp.downcase.to_sym
  if movies[name].nil?
    puts "I'm sorry that movie doesn't exist..."
  else
    movies.delete(name)
    puts "Goned!!"
  end

  when "list"
  movies.each {|k, v| puts "#{k}: #{v} innit"}
  
  else
  puts "I'm sorry I didn't understand your input"
  end



  
