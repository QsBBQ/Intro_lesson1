#Lesson 1 variable scopt

#a = 21
puts "What is the first number?"
num1 = gets.chomp
a = [1,2,3]
a.each do |i|
  num1 = i
end

puts "outside of the do note the difference"
puts num1

def funky(obj)
  obj.uniq
end

outer_obj = [1,2,2,3,3]
funky(outer_obj)
puts "Not changed with method"
puts outer_obj

def funky(obj)
  obj.uniq!
end

outer_obj = [1,2,2,3,3]
funky(outer_obj)
puts "changed with method mutated"
puts outer_obj

