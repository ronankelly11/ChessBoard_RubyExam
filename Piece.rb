class Piece
  attr_accessor :player, :square
  def initialize(player, square)
    @player =  player
    @square = square
  end

  def to_char(player, piece)
    case @player # case to decide which player we are
    when "white" then piece.capitalize
    else
      piece
    end
  end
end
