require_relative "board.rb"
require_relative "cell.rb"
require_relative "ship.rb"
require_relative "player.rb"
class Computer
    def initialize(name = "Computer")
        @name = name
        @board = Grid.new()
        @enemy_board = Grid.new()
        @carrier = Ship.new(5,:Carrier)
        @battleship = Ship.new(4,:Battleship)
        @destroyer = Ship.new(3,:Destroyer)
        @submarine = Ship.new(2,:Submarine)
        @size = @board.size
    end

    def to_s()
        @name
    end






    attr_reader :submarine
    attr_reader :destroyer
    attr_reader :battleship
    attr_reader :enemy_board
    attr_reader :board
    attr_reader :name
    attr_reader :carrier
    attr_reader :size
end