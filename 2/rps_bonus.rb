VALID_CHOICES = { r: 'rock', p: 'paper', sc: 'scissors', sp: 'spock', l: 'lizard' }

WINNER_LOSERS = {
  rock: %w(scissors lizard),
  paper: %w(rock spock),
  scissors: %w(lizard paper),
  spock: %w(rock scissors),
  lizard: %w(spock paper)
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNER_LOSERS[first.to_sym].include?(second)
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

    choice = gets.chomp.downcase.to_sym

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

  prompt("Your score is #{player_score}.")
  prompt("Computer score is #{computer_score}.")

  if player_score == 5
    prompt("You are the grand champion...")
    break
  elsif computer_score == 5
    prompt("Computer is the grand champion...")
    break
  end

  prompt("Do you want to play again? ('y' to continue, anything else to quit)")
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt("Thank you for playing. Goodbye!")
