require "minitest/autorun"
require_relative "ship.rb"

class Ships < Minitest::Test
    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_carrier_exists
        ship = Ship.new(5, "Carrier")
        assert_equal(true, ship.carrier())
    end

end