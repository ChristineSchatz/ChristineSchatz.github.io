# Refactored Solution

class BingoScorer

  def initialize(board)
    @board = board
    check_board
  end

  def check_board
    check_rows
    check_columns
    check_right_to_left
    check_left_to_right
  end

  def check_rows
    @board.each { |row| p "BINGO!" if row.all? {|box| box == "x" }}
  end

  def check_columns
    column = []
    index = 0
    while index < @board.length
    @board.each { |row| column << row[index] }
      if column.all? {|box| box == "x"}
        p "BINGO!"
      else
        column.clear
      end
      index += 1
    end
  end

  def check_right_to_left
    index = 0
    @board.each {|row| index += 1 if row[index] == "x"}
    p "BINGO!" if index == 5
  end

  def check_left_to_right
    index = 4
    @board.each {|row| index -= 1 if row[index] == "x"}
    p "BINGO!" if index == -1
  end

  end
