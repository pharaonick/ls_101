# Blackjack but without betting, splitting, etc
# Ace considered 11 unless that would bust you, then 1
# Dealer stands on soft 17

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# SEE ls_21.rb for LS solution...********
# 

require 'pry'
require 'pry-byebug'

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

# does it help to have this as method or is it unnecessary & confusing?
# probably unnecessary - not needed for DRY
# no advantage to capturing logic...
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
    prompt "You are dealt #{card_name(player.last)}." # add running score?
    break if busted?(player)
  end
end

def dealer_turn(dealer, deck)
  prompt "Dealer has #{card_name(dealer[0])} & #{card_name(dealer[1])}."
  loop do
    break if cards_total(dealer) >= 17
    dealer << deal_card(deck)
    prompt "Dealer is dealt #{card_name(dealer.last)}"
  end
end

# see 21_loopy.rb for LS solution which is (ldo) MUCH more elegant!!
def cards_total(cards)
  total = 0

  cards.each do |card|
    total += CARD_VALUES[card[1]]
  end
  total > 21 && ace?(cards) ? aced_total(cards, total) : total
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
    break if adjusted_total <= 21 || count > aces
  end

  adjusted_total
end

def busted?(cards)
  cards_total(cards) > 21
end

def determine_winner(player, dealer)
  cards_total(player) <=> cards_total(dealer)
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
prompt "Hi! Welcome to TWENTY-ONE. Closest to 21 without busting wins!"
prompt "(An ace = 11 by default, but 1 if that would bust you.)"

loop do
  current_deck = initialize_deck
  player_cards = []
  dealer_cards = []

  start_game(player_cards, dealer_cards, current_deck)

  p1 = "You are dealt #{card_name(player_cards[0])}"
  p2 = "& #{card_name(player_cards[1])}."
  p3 = "Dealer is showing #{card_name(dealer_cards[0])}."
  prompt p1 + ' ' + p2 + ' ' + p3

  player_turn(player_cards, current_deck)

  if busted?(player_cards)
    prompt "Sorry, you bust with #{cards_total(player_cards)}. Dealer wins!"
  else
    prompt "You stand. Your total is #{cards_total(player_cards)}."

    dealer_turn(dealer_cards, current_deck)

    if busted?(dealer_cards)
      prompt "Dealer busts with #{cards_total(dealer_cards)}. You win!"
    else
      prompt "Player has #{cards_total(player_cards)}."
      prompt "Dealer has #{cards_total(dealer_cards)}."
      prompt display_winner(player_cards, dealer_cards)
    end
  end

  # interesting how LS sets this up as a method that returns true/false
  prompt "'y' to play again, anything else to exit."
  answer = gets.chomp.downcase
  break unless answer == 'y'

  system('clear') || system('cls')
end

prompt "Thanks for playing TWENTY-ONE... Goodbye!"
