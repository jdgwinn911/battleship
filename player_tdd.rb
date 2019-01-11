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
        board = Player.new("Demo")
        assert_equal(12, board.size)
    end

    def test_that_enemy_has_board
        enemy_board = Player.new("Computer")
        assert_equal(12, enemy_board.size)
    end

    def test_that_name_is_string
        temp = Player.new("Demogorgon")
        assert_equal("Demogorgon", temp.name)
    end

    def test_that_player_has_ships
        temp = Player.new("Demo")
        assert_equal(5, temp.carrier.size)
    end

end

