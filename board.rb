require_relative "ship.rb"
require_relative "cell.rb"

class Grid < Cell
    def initialize(size = 12)
        @grid = Array.new(size) {Array.new(size) {Cell.new}}
        @end_point = size - 1
    end

    def place_ship(ship, row, col, pos)
        ship.size.times do 
            if pos == "horizontal"
                self.grid[row][col].take(ship)
                col += 1
            else
                self.grid[row][col].take(ship)
                row += 1
            end
        end
                
    end

    attr_reader :start_point
    attr_reader :grid
    attr_reader :size
    attr_reader :pos
    attr_reader :end_point
end


o = Grid.new(36)
o.place_ship(Ship.new(5,"Bot"), 1, 34, "horizontal")
countertop = 0
letters = ('A'..'Z').to_a
print "  "


o.grid.each_with_index do |v, i|
    if countertop < 10
    print "  #{countertop}"
    countertop += 1
    else print " #{countertop}"
        countertop += 1
    end
end

puts "\n"
counter = 0

o.grid.each_with_index do |v, i|
    v.each_with_index do |k, i|
        if i == 0 
            print " #{counter} #{k.to_s}"
            counter += 1   
        elsif i == o.end_point
            print "#{k.to_s} \n"
        else
            print "#{k.to_s}"
        end
    end
end

# print o.grid[2][2].content.to_s
