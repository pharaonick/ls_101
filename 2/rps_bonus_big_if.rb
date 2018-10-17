VALID_CHOICES = { r: 'rock', p: 'paper', sc: 'scissors', sp: 'spock', l: 'lizard' }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'lizard' || second == 'paper')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''

  loop do
    choice_options = ''

    VALID_CHOICES.each do |k, v| 
      choice_options += "#{k} (#{v}), "
    end

    prompt("Choose one: #{choice_options.chomp!(', ')}")

    choice = Kernel.gets().chomp().downcase.to_sym

    if VALID_CHOICES.key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  player_choice = VALID_CHOICES[choice]

  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose: #{player_choice}. Computer chose: #{computer_choice}.")

  display_result(player_choice, computer_choice)

  if win?(player_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, player_choice)
    computer_score += 1
  end

  puts "Player score is #{player_score}."
  puts "Computer score is #{computer_score}."

  if player_score == 5
    puts "Player is the grand champion! Game over..."
    break
  elsif computer_score == 5
    puts "Computer is the grand champion! Game over..."
    break
  end

  prompt("Do you want to play again? ('y' to continue, anything else to quit)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase() == 'y'
end

prompt("Thank you for playing. Goodbye!")
