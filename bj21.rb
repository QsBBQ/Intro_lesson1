#!/usr/bin/ruby env
#Lesson1 Blackjack game procedural

def calculate_total(cards)
  #Build the values and calculate total
  arr = cards.map{ |e| e[1] }
  
  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0
      total = total += 10
    else
      total += value.to_i
    end
  end

  #correct for aces
  arr.select{|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end
  return total
end


puts "Welcome to QsBJ21"
puts "Time to play Blackjack"

puts "What is your name?"
name = gets.chomp

ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

#Building Deck
deck = suits.product(ranks)

#Shuffling Deck
deck.shuffle!

#Dealer
p1_hand = []
d_hand = []

p1_hand << deck.pop
d_hand << deck.pop
p1_hand << deck.pop
d_hand << deck.pop

d_total = calculate_total(d_hand)
p1_total = calculate_total(p1_hand)

#Show Cards
puts "Players hand #{p1_hand[0]} and #{p1_hand[1]}, for a total of #{p1_total}"
puts "Dealers hand #{d_hand[0]} and #{d_hand[1]}, for a total of #{d_total}"
puts
puts "1) hit 2) stay"
hit_or_stay = gets.chomp
