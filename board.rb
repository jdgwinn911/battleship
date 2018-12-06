require_relative "ship.rb"
class Place
    def initialize(x, y)
      @cord = [x, y]

    end
    attr_reader :cord
end

class Grid < Place
    def initialize(size = 12)
        @grid = Array.new(size, Array.new(size, ""))
    end

    def place(x, y)
        ship = Place.new(x, y)
        @grid[ship.cord[0]][ship.cord[1]] = ship
    end
    attr_reader :grid
    attr_reader :size
end

o = Grid.new(24)
o.place(4,2)
o.grid.each do |v|
    p v
end
