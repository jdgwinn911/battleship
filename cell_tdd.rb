require "minitest/autorun"
require_relative "cell.rb"

class Cells < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_ship_can_be_placed_on_cell
        c = Cell.new
        c.place_on_cell()
        ship = c.content[1][2].place_on_cell(Ship.new(2,"Bot"))
        assert_equal("", place_on_cell(ship).content)
    end
    

end