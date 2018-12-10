require_relative "ship.rb"
require_relative "cell.rb"

class Grid < Cell
    def initialize(size = 12)
        @grid = Array.new(size) {Array.new(size, Cell.new)}
        @end_point = size - 1
    end


    # def place(x, y)
    #     ship = "ship"
    #     @grid[x][y] = ship
    # end
    attr_reader :grid
    attr_reader :size
    attr_reader :end_point
end

o = Grid.new()
o.grid[5][2].place(Ship.new(2,"Ubot"))
o.grid.each do |v|
    v.each_with_index do |k,i|
        if i == o.end_point
            print "|#{k.to_s}| \n"
        else
            print "|#{k.to_s}|"
        end
    end
end
print o.grid[2][2].content.to_s
