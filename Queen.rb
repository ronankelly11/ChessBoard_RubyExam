require_relative 'Piece.rb'
require_relative 'Square.rb'
class Queen
  attr_accessor :player
  def initialize(player, square)
    @player = player
    @square = square
  end

  def to_char
    super(player, "Q")
  end
end
