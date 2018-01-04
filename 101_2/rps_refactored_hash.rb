VALID_CHOICES = {'rock' => 1, 'paper' => 2, 'scissors' => 3}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  if (player - computer == -1) || (player - computer == 2)
    prompt("You won")
  elsif (player - computer == 1) || (player - computer == -2)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.keys.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.has_key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.keys.sample

  prompt("You chose: #{choice}. Computer chose: #{computer_choice}.")

  display_result(VALID_CHOICES[choice], VALID_CHOICES[computer_choice])

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")

