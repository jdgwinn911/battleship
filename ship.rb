
class Ship
    def initialize(size, name)
        @size = size
        @name = name
        @hit_count = 0
    end

    def type_of_ship()
        return @name
    end

    def size_of_ship()
        return @size
    end

    def hitter()
        return @hit_count
    end

    def take_a_hit()  #ship.size.times do should do the trick!!!!!!   #{hit_count} #{hit_count}
        @hit_count += 1
        p @hit_count
        if @hit_count != @size
            return "You hit a ship!"
        elsif @hit_count == @size
            return "#{@name.capitalize} was Destroyed"
        end
        # return true
    end

    attr_reader :ship
    attr_reader :size
    attr_reader :name
    attr_reader :hit_count
end
