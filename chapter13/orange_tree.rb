class OrangeTree

  def initialize 
    @age = 1
    @num_of_oranges = 0
    @height = 5
  end

  def one_year_passes
    @age += 1
    @height += (rand * 2).to_i + 1
    if @age > 3
      @num_of_oranges = (@height * (rand + 2)).to_i
    end
    if (@age * rand) > 30
      puts "Your tree died at age #{@age}."
      exit
    end
    puts "Your tree is now age #{@age}."
  end

  def height
    puts "Your tree is now #{@height} feet tall."
  end

  def count_the_oranges
    puts "Your tree has #{@num_of_oranges} oranges"
  end

  def pick_an_orange
    if @num_of_oranges > 0
      @num_of_oranges -= 1
      puts "You ate one orange."
    else
      puts "No oranges left this year!"
    end
  end

  def space
    puts
  end

end

orange = OrangeTree.new
while true
  orange.height
  orange.count_the_oranges
  orange.pick_an_orange
  orange.count_the_oranges
  orange.one_year_passes
  orange.space
  sleep 1
end
