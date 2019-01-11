require_relative "ship.rb"
require_relative "board.rb"


class Enemy
    def initialize(grid)
        num = []
        @coordinates = []
        @ships = [carrier = Ship.new(5, "C"), battleship = Ship.new(4, "B"), cruiser = Ship.new(3, "c"), submarine = Ship.new(2, "S")]
        counter = 0
        grid.size.times do 
            num << counter
            counter += 1
        end
        num.each do |row|
            num.each do |col|
                @coordinates << [row, col]
            end
        end
    end

    def deploy_opp_ships()
        counter = 0 
        while true
            spots_2_choose = @coordinates
            hold_it = spots_2_choose.sample
            pos = [hor, vert]
            master(@ships(counter))
        end
            

    end

    attr_reader :coordinates
    attr_reader :ships
end
 x = Grid.new()
temp = Enemy.new(x)
p temp.coordinates

