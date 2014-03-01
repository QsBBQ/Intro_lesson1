#!/usr/bin/ruby env
#Lesson1 Blackjack game

puts "Welcome to QsBJ21"

puts "Time to play Blackjack"
puts "What is you name?"
name = gets.chomp

ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
deck = []
suits.each do |s|
  ranks.each do |r|
    deck.push([r, s])
  end
end
puts deck
  
def shuffle deck
  shuff = []
end