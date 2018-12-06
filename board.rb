require_relative "ship.rb"
# class Place
#     def initialize(x, y)
#       @cord = [x, y]

#     end
#     attr_reader :cord
# end

class Grid 
    def initialize(size = 12)
        @grid = Array.new(size) {Array.new(size, "")}
    end

    def place(x, y)
        ship = "ship"
        @grid[x][y] = ship
    end
    attr_reader :x
    attr_reader :y
    attr_reader :grid
    attr_reader :size
end

o = Grid.new(24)
o.place(4,5)
o.grid.each do |v|
    p v
end
p o.grid[6][10]
