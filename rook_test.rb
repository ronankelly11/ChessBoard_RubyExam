require 'test/unit'
require_relative 'Rook.rb'
require_relative 'Square.rb'
require_relative '' 'Piece.rb'
class Rook_Test < Test::Unit::TestCase
  def setup
    @rook = Rook.new("white", Square.new("a", "1"))
  end

  def test_initalize
    assert_equal("white", @rook.player)
  end

  def test_to_char
    assert_equal("R", @rook.to_char)
  end
end

