WINNING_MOVES = {
  'rock' =>     %w(scissors lizard),
  'paper' =>    %w(rock spock),
  'scissors' => %w(lizard paper),
  'spock' =>    %w(rock scissors),
  'lizard' =>   %w(spock paper)
}

VALID_CHOICES = {
  'rock' =>     'r',
  'paper' =>    'p',
  'scissors' => 'sc',
  'spock' =>    'sp',
  'lizard' =>   'l'
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def determine_winner(player, computer)
  if win?(player, computer)
    'You'
  elsif win?(computer, player)
    'Computer'
  end
end

def display_result(winning_player)
  if winning_player
    prompt("#{winning_player} won!")
  else
    prompt("It's a tie!")
  end
end

def increment_score(winning_player, current_score)
  current_score[winning_player] += 1
end

def overall_winner?(results)
  results.value?(5)
end

round = 1

score = {
  'You' => 0,
  'Computer' => 0
}

prompt("Let's play rock-paper-scissors-lizard-spock! First to five wins...")

loop do
  choice_options = VALID_CHOICES.map { |k, v| "#{v} (#{k})" }.join(', ')
  choice = ''

  loop do
    prompt("Round #{round}: #{score['You']}-#{score['Computer']}")

    prompt("Choose one: #{choice_options}")
    choice = gets.chomp.downcase

    if VALID_CHOICES.value?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  player_choice = VALID_CHOICES.key(choice)

  computer_choice = VALID_CHOICES.keys.sample

  prompt("You chose: #{player_choice}. Computer chose: #{computer_choice}.")

  winner = determine_winner(player_choice, computer_choice)

  display_result(winner)

  increment_score(winner, score) if winner

  prompt(
    "Your score is #{score['You']}. Computer score is #{score['Computer']}."
  )

  if overall_winner?(score)
    prompt("That means the GRAND CHEESE is... #{score.key(5)}!")
    break
  end

  round += 1
  # seems a bit hacky...
  prompt("Hit return for round #{round}.")
  gets

  system('clear') || system('cls')
end

prompt("Thank you for playing. Goodbye!")
