require "minitest/autorun"
require_relative "board.rb"

class Board < Minitest::Test

    # def test_assert_that_1_equals_1
    #     assert_equal(1, 1)
    # end

    # def test_that_the_grid_is_an_array
    #     x = Grid.new
    #     assert_equal(Grid, x.class)
    # end

    # def test_that_ship_can_be_placed
    #     o = Grid.new
    #     row = 1
    #     col = 1 
    #     o.place_ship(Ship.new(1, "boaty"),row, col, "horizontal")
    #     assert_equal("ship", o.grid[row][col].content())
    # end
    
    # def test_that_ship_can_be_placed2
    #     o = Grid.new
    #     row = 4
    #     col = 3 
    #     o.place_ship(Ship.new(4, "battleship"),row, col, "horizontal")
    #     o.place_ship(Ship.new(5, "carrier"),row, col, "horizontal")
    #     assert_equal("ship", o.grid[row][col].content())
    #     assert_equal("ship", o.grid[row][col].content())
    # end

    
    # def test_that_ship_can_be_placed3
    #     o = Grid.new
    #     row = 4
    #     col = 3 
    #     o.place_ship(Ship.new(3, "cruiser"),row, col, "horizontal")
    #     o.place_ship(Ship.new(5, "carrier"),row, col, "horizontal")
    #     assert_equal("ship", o.grid[row][col].content())
    #     assert_equal("ship", o.grid[row][col].content())
    # end

    def test_that_ships_cant_overlap()
        o = Grid.new
        row = 2
        col = 2 
        o.place_ship(Ship.new(4, "battleship"), row, col, "vertical")
        assert_equal("no ship on ship violence!", o.check_spot(Ship.new(4, "battleship"), row, 7, "vertical"))
    end

end