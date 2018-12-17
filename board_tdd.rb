require "minitest/autorun"
require_relative "board.rb"

class Board < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_the_grid_is_an_array
        x = Grid.new
        assert_equal(Grid, x.class)
    end

    def test_that_ship_can_be_placed
        o = Grid.new
        o.place_ship()
        assert_equal("boat", o.grid[1][2].content())
    end
    

end