require "minitest/autorun"
require_relative "player.rb"

class Players < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_player_name
        name = Player.new("Demo")
        assert_equal(Player, name.class)
    end

    def test_that_player_has_board
        bored = Player.new("Demo")
        assert_equal(12, bored.size)
    end


end
