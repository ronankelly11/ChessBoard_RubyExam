require 'test/unit'
require_relative 'Square.rb'

class Square_Test < Test::Unit::TestCase
  def setup
    @square = Square.new('a', '1')
  end

  def test_initalize
    assert_equal('a', @square.col)
    assert_equal('1', @square.row)
  end

  def test_equality
    @other_square = Square.new('a', '1')
    assert_equal(true, @square == @other_square)
  end

  def test_adjacent
    @adj_square = Square.new('a', '2')
    assert_equal(@adj_square.row, @square.adjacent("up").row)
  end
end
