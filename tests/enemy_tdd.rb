require "minitest/autorun"
require_relative "enemy.rb"

class Opponent < Minitest::Test

    def test_that_the_enemy_has_firing_capabilities
        g = Grid.new(12)
        o = Grid.new(12)
        q = Enemy.new(g, o)
        q.hit_o_grid()
        assert_equal(Array, q.spots_to_fire.class)
    end

end
