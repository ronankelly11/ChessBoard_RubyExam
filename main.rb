require_relative 'ChessBoard'

chessboard = ChessBoard.new

IO.foreach('pieces.txt') do |line|
  data = line.split
  string = data[0]
  piece = string[0]
  square = Square.new(string[1],string[2])
  chessboard.add_piece(square, piece)
end

puts chessboard.to_s