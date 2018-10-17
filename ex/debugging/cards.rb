require 'pry'
require 'pry-byebug'

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# binding.pry
# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, cards)|
  cards.map! do |card|
    score(card)
  end

  sum += cards.sum
end

puts sum

# - player_cards section: variable shadowing...cards var within block is accessing cards variable outside it,
# so it reassigning the outer cards variable that is used in deck, so every shuffle and pop affects
# each suit
# can clone cards in deck, or completely restructure how the deck works ;)
# ACTUALLY, BETTER EXPLANATION OF THE ISSUE IS SIMPLY THAT WITHIN DECK WE ASSIGN THE SAME ARRAY 
# OBJECT TO EACH SUIT, HENCE THE PROBLEM
# - sum section: while on each iteration we map the cards array to a new array of
# its sums, we don't assign that object to a variable. 
# Either assign it, or mutate the array referenced by block param cards
# 