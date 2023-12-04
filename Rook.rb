require_relative 'Square.rb'
require_relative 'Piece.rb'
class Rook < Piece
  attr_accessor :player
  def initialize(player, square) # player is either black (r) or white (R)
    @player =  player
    @square = square
  end

  def to_char
    super(player, "R")
  end
end