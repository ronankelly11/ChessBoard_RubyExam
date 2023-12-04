class Square
  attr_accessor :col, :row, :piece
  def initialize(col, row)
    @col = col
    @row = row
    @piece = "*"
  end

  def ==(square) # method to compare symbols and see if the two squares are the same square
    return true if (@col.to_sym == square.col.to_sym && @row.to_sym == square.row.to_sym)
    false
  end

  def adjacent(direction)  # given a direction, returns its adjacent square
    x = @col.to_i
    y = @row.to_i
    #if there are no adjacent tiles
    return self if (x == 1 && direction.equal?("left")) || (x == 8 && direction.equal?("right"))
    return self if (y == 1 && direction.equal?("down") )|| (y == 8 && direction.equal?("up"))
    case direction
    when "left" then Square.new((x-1).to_s, @row)
    when "down" then Square.new(@col, (y-1).to_s)
    when "right" then Square.new((x+1).to_s, @row)
    when "up" then Square.new(@col, (y+1).to_s)
    else
      puts "Invalid Direction"
    end
  end
end

