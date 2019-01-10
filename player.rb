require_relative "board.rb"
require_relative "cell.rb"
require_relative "ship.rb"
class Player
    def initialize(name)
        @name = name
        @board = Grid.new()
        @enemy_board = Grid.new()
        @carrier = Ship.new(5,:Carrier)
        @battleship = Ship.new(4,:Battleship)
        @destroyer = Ship.new(3,:Destroyer)
        @submarine = Ship.new(2,:Submarine)
        @size = @board.size
    end
    attr_reader :carrier
    attr_reader :size
end