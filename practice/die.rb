class Die
  def initialize(num_sides)
    unless num_sides > 0
      raise ArgumentError.new("Only 1 or more")
    end
    @num_sides = num_sides
  end

  def sides
    puts @num_sides
  end

  def roll
    puts rand(6) + 1
  end

end

die = Die.new(6)
die.sides # returns 6
die.roll # returns random int b/w 1 & 6