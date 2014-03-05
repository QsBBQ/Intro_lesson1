#Chapter 13.6 Orange tree

require 'pry'

class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      "The tree is dead :( "
    end
  end
  
  def count_the_oranges
    if @alive
      @orange_count
    else
      'The tree is dead no oranges:( '
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0 #resets to zero after year

      if @height > 10 && rand(2) > 0
        #tree dies
        @alive = false
      elsif @height > 2
        #new oranges grow
        @orange_count = (@height * 15 -15).to_i
        "This year your tree grew to #{@height}m tall," +
        " and produced #{@orange_count} oranges"
      else
        "This year your tree grew to #{@height}m tall," +
        " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        "You pick a juicy, delicious orange!"
      else
        "You search every branch, but find no oranges."
      end
    end
  end
end

ot = OrangeTree.new
ot.pry
23.times do
  ot.one_year_passes
end
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange) 



