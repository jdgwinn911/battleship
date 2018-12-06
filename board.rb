require_relative "ship.rb"
require_relative "cell.rb"

class Grid 
    def initialize(size = 12)
        @grid = Array.new(size) {Array.new(size, "")}
    end

    def place(x, y)
        ship = "ship"
        @grid[x][y] = ship
    end
    attr_reader :grid
    attr_reader :size
end

o = Grid.new(3)
o.place(1,2)
o.grid.each do |v|
    p v
end
p o.grid[1][2]