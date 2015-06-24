
artists = {"Petit Noir" => "pop", "Coleman Hawkins" => "jazz",
  "Gangstarr" => "hip hop", "Attic Fowler" => "dream pop",
  "Tame Impala" => "psych rock", "Quasimoto" => "hip hop",
  "Beenie Man" => "dancehall"}

# What if we wanted to print the artist according to genre?

artists.map {|artist, genre| p artist if genre == "hip hop"}

# "Gangstarr"
# "Quasimoto"
# => [nil, nil, "Gangstarr", nil, nil, "Quasimoto", nil]

p artists

# artists.each {|artist, genre| p artist if genre == "hip hop"}

# grams_sugar = {"cupcake" => 25, "donut" => 12, "cookie" => 8,
#   "banana pudding" => 25, "chocolate mousse" => 25}

# Let's see how many grams of sugar these would have if
# we had the willpower to eat only half a portion:

# grams_sugar.map {|dessert, grams| ["Half a #{dessert}", grams / 2]}

# => [["Half a cupcake", 12], ["Half a donut", 6], ["Half a cookie", 4],
# ["Half a banana pudding", 12], ["Half a chocolate mousse", 12]]



def call
    number = make_num
    @bingo_board[number[0]].map! {|i|
      if i == number[1]
        i ="X "
      else
        i
      end
    }
    @bingo_board
  end

  def call
    number = [rand(4), rand(1..100)]
    @bingo_board.each do |array|
      if array[number[0]] == number[1]
        array[number[0]] = " X"
      end
    end
  end

  def fill_board
    @bingo_board = Array.new(5) {Array.new(5)}
    @bingo_board.each do |row|
      row.map! {|inner| rand(1..100)}
    end


bingo_board.each {|row| row[check_column] = "X" if row[check_column] == number}