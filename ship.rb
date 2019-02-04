
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

    def take_a_hit()  
        @hit_count += 1
        if @hit_count != @size
            @ship_status = "You hit a ship!"
        elsif @hit_count == @size
            @ship_status = "Ship was Destroyed!"
            return @ship_status
        end
    end

    attr_reader :ship_status
    attr_reader :ship
    attr_reader :size
    attr_reader :name
    attr_reader :hit_count
end
