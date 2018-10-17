WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER  = ' '
PERSON_MARKER   = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# modification to Array#join used in `person_places_piece!`
def joinor(ary, delimiter = ', ', final_word = 'or')
  result = ''
  count = 0

  case ary.size
  when 0 then ''
  when 1 then ary[0].to_s
  when 2 then "#{ary[0]} #{final_word} #{ary[1]}"
  else
    while count <= ary.length - 2
      result += ary[count].to_s + delimiter
      count += 1
    end

    result + final_word + ' ' + ary[-1].to_s
  end
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength, Metrics/LineLength
def display_board(brd, current_score)
  system 'clear'
  puts "You're an #{PERSON_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts "First to five wins..."
  puts "Person: #{current_score['Person']}, Computer: #{current_score['Computer']}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength, Metrics/LineLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece(brd, player)
  player == 'Person' ? person_places_piece!(brd) : computer_places_piece!(brd)
end

def switch_player(player)
  player == 'Person' ? 'Computer' : 'Person'
end

def person_places_piece!(brd)
  square = ''

  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}."
    prompt "(Squares are counted left to right from top left.)"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PERSON_MARKER
end

# rubocop:disable Metrics/LineLength
def computer_places_piece!(brd, attack = [], defend = [])
  assess_lines!(brd, attack, defend)

  square = if !attack.empty?
             attack.flatten.uniq.select { |key| brd[key] == INITIAL_MARKER }.sample
           elsif !defend.empty?
             defend.flatten.uniq.select { |key| brd[key] == INITIAL_MARKER }.sample
           else
             brd[5] == INITIAL_MARKER ? 5 : empty_squares(brd).sample
           end

  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/LineLength

def assess_lines!(brd, attack, defend)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(INITIAL_MARKER) == 1
      attack << line
    elsif brd.values_at(*line).count(PERSON_MARKER) == 2 &&
          brd.values_at(*line).count(INITIAL_MARKER) == 1
      defend << line
    end
  end
end

def computer_attacks()

end

def computer_defends()

end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PERSON_MARKER) == 3
      return "Person"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def increment_score(current_score, winner)
  current_score[winner] += 1
end

### LET THE GAMES BEGIN ###

system 'clear'
prompt "Welcome to what we Brits call Noughts and Crosses!"
prompt "First player to win five games is the champion..."

loop do
  score = { 'Person' => 0, 'Computer' => 0 }

  prompt "Who's going first? Choose from the following:"
  prompt "'p' for Person, 'c' for Computer, anything else for a random choice."
  choice = gets.chomp.downcase

  current_player = case choice
                   when 'p' then 'Person'
                   when 'c' then 'Computer'
                   else
                     ['Person', 'Computer'].sample
                   end
  loop do
    board = initialize_board

    loop do
      display_board(board, score)

      place_piece(board, current_player)

      current_player = switch_player(current_player)

      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, score)

    if someone_won?(board)
      increment_score(score, detect_winner(board))
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end
    prompt "Person: #{score['Person']}, Computer: #{score['Computer']}."

    prompt "Hit enter to continue"
    gets

    if score.value?(5)
      prompt "#{score.key(5)} is the overall champion!"
      break
    end
  end

  prompt "Play again? ('y' to play again; any other key to exit)"
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt "Thanks for playing Noughts and Crosses! Goodbye."
