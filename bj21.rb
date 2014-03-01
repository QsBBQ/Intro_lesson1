#!/usr/bin/ruby env
#Lesson1 Blackjack game

puts "Welcome to QsBJ21"

puts "Time to play Blackjack"
puts "What is you name?"
name = gets.chomp

ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
deck = []

#Building Deck 
  suits.each do |s|
    ranks.each do |r|
      deck.push([r, s])
    end
  end

#Shuffling Deck
shuffled = deck.shuffle

#Trying to deal
#need to turn these into methods.
count = 0
deckcount = 0
p_hand = []
d_hand = []
#while deckcount < 26
  #deckcount = 1 + deckcount
  while count < 2
    count = 1 + count
  
    p_hand.push(shuffled[0])
    d_hand.push(shuffled[1])
    shuffled.delete_at(0)
    shuffled.delete_at(1)
  end
  if p_hand[0][0].to_i + p_hand[1][0].to_i == 21
    puts "Player 21!"
    
  elsif d_hand[0][0].to_i + d_hand[1][0].to_i == 21
    puts "Dealer 21!"
    
  elsif p_hand[0][0].to_i + p_hand[1][0].to_i < 21
    puts "Player do you want to hit?"

     
   end
#end

puts "Players hand #{p_hand}"
puts "Dealers hand #{d_hand}"
