#Chapter 12 One billion seconds
#And Chapter 12 Happy birthday

t1 = Time.new(1974, 8, 16, 0, 0)
t2 = Time.now

t3 = (t2-t1)
t4 = (t2-t1)/60/60/24/365

puts "I am #{t3} seconds old"
puts "#{t4} years old"

puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born?"
month = gets.chomp.to_i
puts "What day were you born?"
day = gets.chomp.to_i

b = Time.local(year, month, day)
t = Time.new

age = 1

while Time.local(year + age, month, day) <= t
  puts 'SPANK'
  age = age + 1
end
