# puts 24*365
# puts ((60*24)*365)*10

# puts 'blink '*4

# puts 'whats your first name?'
# first = gets.chomp
# puts 'whats your middle?'
# middle = gets.chomp
# puts 'whats your last?'
# last = gets.chomp

# total = first.length + middle.length + last.length
# puts 'your full name has ' + total.to_s + ' characters!'

# def comma(number)
#     if number < 1000
#         return number.to_s
#     else
#         number = number.to_s.reverse!
#         str_length = number.to_s.length
#         comma_array = []
#         until str_length <= 0 do #000999
#           sliced = number.slice!(0,3)
#           comma_array << sliced
#           str_length -= 3
#         end
#     end
#     puts comma_array.join(",").reverse!
# end

# attempts: 10
# p nested_array[1][1][2][0]

# p hash[:outer][:inner]["almost"][3]



# for i in 0..100
#   if i % 3 == 0
#     p "Fizz"
#   elsif i % 5 == 0
#     p "Buzz"
#   end
#   if i % 5 ==0 and i % 3 == 0
#     p "FizzBuzz"
#   end

# end

class BingoBoard


  def initialize
    @bingo_array = ["B","I","N","G","O"]
    @bingo_board = Array.new(5) { Array.new(5)}
  end


  def generate
    @letter_index = rand(0..4)
    @bingo_letter = @bingo_array[@letter_index]
    @bingo_num = rand(1..100)
    p "Good luck! We drew: #{@bingo_letter}#{@bingo_num}.Your result for this column is: "
end


def check_column
  @bingo_board[@letter_index].map! { |num|
    if num == @bingo_num
      num = "X"
    else
      num
    end
  }
end


def display_board
  p "B   I   N   G    O"
  @bingo_board.each do |row|
    p row
  end
end

def load_board
  @bingo_board.each {|col|
    col.map! {|row|
      rand(1..100)
    }
  }
end

end