require "minitest/autorun"
require_relative "board.rb"

class Board < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_the_grid_is_an_array
        o = Grid.new
        assert_equal(Grid, o.class)
    end

    # def test_that_ship_can_be_placed
    #     o = Grid.new
    #     row = 1
    #     col = 1 
    #     o.mastor_funk(Ship.new(1, "boaty"),row, col, "horizontal")
    #     assert_equal("ship", o.grid[row][col].content().to_s)
    # end
    
    # def test_that_ship_can_be_placed2
    #     o = Grid.new
    #     row = 4
    #     col = 3 
    #     o.mastor_funk(Ship.new(4, "battleship"),row, col, "horizontal")
    #     o.mastor_funk(Ship.new(5, "carrier"),row, col, "horizontal")
    #     assert_equal("ship", o.grid[row][col].content())
    #     assert_equal("ship", o.grid[row][col].content())
    # end

    
    # def test_that_ship_can_be_placed3
    #     o = Grid.new
    #     row = 4
    #     col = 3 
    #     o.mastor_funk(Ship.new(3, "cruiser"),row, col, "horizontal")
    #     o.mastor_funk(Ship.new(5, "carrier"),row, col, "horizontal")
    #     assert_equal("ship", o.grid[row][col].content())
    #     assert_equal("ship", o.grid[row][col].content())
    # end

    def test_that_ships_cant_overlap()
        o = Grid.new
        row = 2
        col = 2 
        o.mastor_funk(Ship.new(4, "battleship"), row, col, "vertical")
        assert_equal("Invalid Placement!", o.mastor_funk(Ship.new(4, "battleship"), row, col, "vertical"))
    end

    def test_that_enemy_cell_has_content
        m = Grid.new(12, "ai")
        assert_equal("",m.grid[2][4].class )
    end



    


end