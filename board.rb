require_relative "ship.rb"
require_relative "cell.rb"

class Grid < Cell
    def initialize(size = 12)
        @grid = Array.new(size) {Array.new(size, Cell.new)}
    end


    # def place(x, y)
    #     ship = "ship"
    #     @grid[x][y] = ship
    # end
    attr_reader :grid
    attr_reader :size
end

o = Grid.new(3)
o.grid[0][0].place(Ship.new(1,"Poopboat"))
o.grid.each do |v|
    v.each do |k|
        p k
    end
end
print o.grid[0][0].content.to_s
