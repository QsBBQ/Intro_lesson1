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

#Player turn


if p1_total == 21
  puts "Congrates 21!"
  exit
end

while p1_total < 21
  puts "1) hit 2) stay"
  hit_or_stay = gets.chomp
  if !['1', '2'].include?(hit_or_stay)
    puts "Error you must enter 1 or 2"
    next
  end

  if hit_or_stay == "2"
    puts "Player staying"
    break
  end
  #hit
  new_card = deck.pop
  puts "Dealing card to player: #{new_card}"
  p1_hand << new_card
  p1_total = calculate_total(p1_hand)
  puts "Player P1 total #{p1_total}"
  if p1_total == 21
    puts "Congrates 21!"
    exit
  elsif p1_total > 21
    puts "BUSTED!"
    exit
  end
end

#Dealer turn

if d_total == 21
  puts "Dealer wins 21!"
  exit
end

while d_total < 17
  #hit
  new_card = deck.pop
  puts "Dealing new card for dealer: #{new_card}"
  d_hand << new_card
  d_total = calculate_total(d_hand)
  puts "Dealer total now: #{d_total}"
  if d_total == 21
    puts "Dealer wins! You loss!"
    exit
  elsif d_total > 21
    puts "Dealer busts! You win!"
    exit
  end
end

#Compare hand
puts "Dealer's cards: "
d_hand.each do |card|
puts "=> #{card}"
end
puts

puts "Your cards:"
p1_hand.each do |card|
  puts "=> #{card}"
end
puts

if d_total > p1_total
  puts "Sorry dealer won"
elsif d_total < p1_total
  puts "You win!"
else
  puts "House always wins!"
end