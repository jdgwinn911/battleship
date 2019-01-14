require "minitest/autorun"
require_relative "cell.rb"

class Cells < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    # def test_that_ship_can_be_placed_on_cell
    #     c = Cell.new
    #     ship = c.content[1][2].take(Ship.new(2,"Bot"))
    #     assert_equal("", c.take(ship).content)
    # end

    def test_that_cell_status_changes_when_hit
        c = Cell.new
        assert_equal("missed", c.if_hit())
    end


    

end