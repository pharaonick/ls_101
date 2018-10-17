#NEEDS TO BE REWRITTEN BY HAND BECAUSE OF COPYPASTA FORMATTING ISSUES

#Note that add, display, update, delete = CRUD (create, read, update, delete), which are the four basic functions of persistent storage…


movies = {
  gladiator: 5,
  pulp_fiction: 5,
  memento: 4,
  titanic: 2,
  goldeneye: 3
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
when 'add'
  puts "What movie do you want to add?"
  title=gets.chomp.to_sym
  if movies[title] == nil #if movies[title].nil?
    puts "Rate the movie between 1 and 5"
    rating=gets.chomp.to_i
    movies[title] = rating
  else
    puts "I'm sorry that already exists"
  end
 
when "update"
  puts "What movie do you want to update?"
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "I'm sorry that movie doesn't exist"
  else
    puts "What's the new rating then?"
    movies[title] = gets.chomp.to_i
  end
   
when "display"
  movies.each do |k, v|
    puts "#{k}: #{v}"
  end
 
when "delete"
  puts "Which movie you wanna spike?"
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "That doesn't exist..."
  else
    movies.delete(title)
    puts "Killed it for you"
  end
 
else
  puts "Error!"
end



