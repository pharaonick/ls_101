TARGET = 21
STAND_ON = 17

CARD_VALUES = {
  '2'  =>  2,
  '3'  =>  3,
  '4'  =>  4,
  '5'  =>  5,
  '6'  =>  6,
  '7'  =>  7,
  '8'  =>  8,
  '9'  =>  9,
  '10' => 10,
  'J'  => 10,
  'Q'  => 10,
  'K'  => 10,
  'A'  => 11
}

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  {
    "c" => %w[2 3 4 5 6 7 8 9 10 J Q K A],
    "d" => %w[2 3 4 5 6 7 8 9 10 J Q K A],
    "h" => %w[2 3 4 5 6 7 8 9 10 J Q K A],
    "s" => %w[2 3 4 5 6 7 8 9 10 J Q K A]
  }
end

def start_game(player, dealer, deck)
  player << deal_card(deck) << deal_card(deck)
  dealer << deal_card(deck) << deal_card(deck)
end

def deal_card(deck)
  suit = deck.keys.sample
  value = deck[suit].sample
  deck[suit].delete(value)
  [suit, value]
end

def card_name(card)
  card.reverse.join
end

# rubocop: disable Metrics/AbcSize, Metrics/MethodLength
def player_turn(player, deck)
  loop do
    action = ''

    loop do
      prompt "Do you want to hit ('h') or stand ('s')?"
      action = gets.chomp.downcase
      break if ['h', 's'].include?(action)
      prompt "Sorry that's not a valid choice."
    end

    break if action == 's'

    player << deal_card(deck)
    total = cards_total(player)

    dealt_card = "You are dealt #{card_name(player.last)}."
    curr_total = "Your current total is #{total}."
    prompt dealt_card + ' ' + curr_total

    break if busted?(total)
  end
end
# rubocop: enable Metrics/AbcSize, Metrics/MethodLength

def dealer_turn(dealer, deck)
  prompt "--------------------"
  prompt "Dealer has #{card_name(dealer[0])} & #{card_name(dealer[1])}."
  loop do
    break if cards_total(dealer) >= STAND_ON
    dealer << deal_card(deck)
    total = cards_total(dealer)

    dealt_card = "Dealer is dealt #{card_name(dealer.last)}."
    curr_total = "Dealer's current total is #{total}."
    prompt dealt_card + ' ' + curr_total
  end
end

def cards_total(cards)
  total = 0

  cards.each do |card|
    total += CARD_VALUES[card[1]]
  end
  total > TARGET && ace?(cards) ? aced_total(cards, total) : total
end

def ace?(cards)
  cards.flatten.include?("A")
end

def aced_total(cards, original_total)
  aces = 0
  cards.each { |card| aces += card.count("A") }

  count = 1
  adjusted_total = original_total

  loop do
    adjusted_total -= 10
    count += 1
    break if adjusted_total <= TARGET || count > aces
  end

  adjusted_total
end

def busted?(current_total)
  current_total > TARGET
end

def determine_winner(player, dealer)
  player <=> dealer
end

def increment_score(winner, current_score)
  current_score[winner] += 1 unless winner.include?("It's")
end

def display_winner(player, dealer)
  case determine_winner(player, dealer)
  when -1 then "Dealer wins!"
  when  1 then "Player wins!"
  when  0 then "It's a tie!"
  end
end

########## LET THE GAMES BEGIN ##########

system('clear') || system('cls')
prompt "Welcome to TWENTY-ONE-PLUS. Closest to #{TARGET} without busting wins!"
prompt "(An ace = 11 by default, but 1 if that would bust you."
prompt "Dealer stands on soft #{STAND_ON}.)"
prompt "--------------------"
prompt "First to win five hands is the champion!"

score = { 'Player' => 0, 'Dealer' => 0 }

loop do
  current_deck = initialize_deck
  player_cards = []
  dealer_cards = []

  player_score = "The current score is Player: #{score['Player']},"
  dealer_score = "Dealer: #{score['Dealer']}."
  prompt player_score + ' ' + dealer_score

  prompt "--------------------"

  start_game(player_cards, dealer_cards, current_deck)

  player_total = cards_total(player_cards)

  card1 = "You are dealt #{card_name(player_cards[0])}"
  card2 = "& #{card_name(player_cards[1])}."
  curr_total = "Your current total is #{player_total}."
  prompt card1 + ' ' + card2 + ' ' + curr_total

  prompt "Dealer is showing #{card_name(dealer_cards[0])}."

  player_turn(player_cards, current_deck)
  player_total = cards_total(player_cards)

  if busted?(player_total)
    prompt "Sorry, you bust with #{player_total}. Dealer wins!"
    increment_score('Dealer', score)
  else
    prompt "You stand. Your total is #{player_total}."

    dealer_turn(dealer_cards, current_deck)
    dealer_total = cards_total(dealer_cards)

    if busted?(dealer_total)
      prompt "Dealer busts with #{dealer_total}. You win!"
      increment_score('Player', score)
    else
      prompt "--------------------"

      prompt "Player has #{player_total}. Dealer has #{dealer_total}."
      winner = display_winner(player_total, dealer_total)
      prompt winner
      increment_score(winner[0..5], score)
    end
  end

  prompt "--------------------"
  prompt "Player: #{score['Player']}, Dealer: #{score['Dealer']}."

  break if score.value?(5)

  prompt "Hit enter to continue."
  gets

  system('clear') || system('cls')
end

prompt "#{score.key(5)} is the grand champion!"

prompt "Thanks for playing TWENTY-ONE-PLUS... Goodbye!"
