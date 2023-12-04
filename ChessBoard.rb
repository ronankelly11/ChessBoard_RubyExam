require_relative 'Rook.rb'
require_relative 'Square.rb'
class ChessBoard
  def initialize
    @rooks = []
    @board = Hash.new
    initialize_board
  end

  def initialize_board # Method to initialize a hashmap to store 8 Arrays as values with 1..8 as keys where 1 = a, 2 = b, etc...
    1.upto(8) do |i|
      @board.store(i.to_s, Array.new(8, "*"))
    end
  end

  def add_piece(square, piece)
    column = square.col
    case column
    when "a" then column = '1'
    when "b" then column = '2'
    when "c" then column = '3'
    when "d" then column = '4'
    when "e" then column = '5'
    when "f" then column = '6'
    when "g" then column = '7'
    when "h" then column = '8'
    else
      puts("invalid input")
    end
   column_array = @board[column]
    x =
    column_array[square.row.to_i] = piece
    @board[column] = column_array
  end

  def to_s
    string_rep = ""
    8.downto(1) do |i|
      value = @board[i.to_s]
      string_rep += (i.to_s + "  " + value.join('  ') + "\n")
    end
    string_rep += "   a  b  c  d  e  f  g  h"
  end

end
