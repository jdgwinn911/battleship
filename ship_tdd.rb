require "minitest/autorun"
require_relative "ship.rb"

class Boats < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end
    def test_that_carrier_exists
        x = Ship.new(5, "Carrier")
        assert_equal(Ship, x.class)
    end

    def test_that_carrier_name_is_carrier
        x = Ship.new(5, "Carrier")
        assert_equal("Carrier", x.type_of_ship())
    end
    def test_that_carrier_size_is_5
        x = Ship.new(5, "Carrier")
        assert_equal(5, x.size_of_ship())
    end

    def test_that_ship_exists
        x = Ship.new(4, "battleship")
        assert_equal(Ship, x.class)
    end

    def test_the_name_of_battleship
        x = Ship.new(4, "battleship")
        assert_equal("battleship", x.type_of_ship())
    end

    def test_the_size_of_battleship
        x = Ship.new(4, "battleship")
        assert_equal(4, x.size_of_ship())
    end

    def test_that_cruiser_exists
        x = Ship.new(3, "Cruiser")
        assert_equal(Ship, x.class)
    end

end